###
# Welcome to the new js2coffee 2.0, now
# rewritten to use the esprima parser.
# try it out!
###

if typeof Object.create != 'function'

  Object.create = (obj) ->

    F = ->

    F.prototype = obj
    new F

(($, window, document) ->
  Carousel =
    init: (options, el) ->
      base = this
      base.$elem = $(el)
      # options passed via js override options passed via data attributes
      base.options = $.extend({}, $.fn.owlCarousel.options, base.$elem.data(), options)
      base.userOptions = options
      base.loadContent()
      return
    loadContent: ->
      base = this

      getData = (data) ->
        if typeof base.options.jsonSuccess == 'function'
          base.options.jsonSuccess.apply this, [ data ]
        else
          content = ''
          for i of data['owl']
            content += data['owl'][i]['item']
          base.$elem.html content
        base.logIn()
        return

      if typeof base.options.beforeInit == 'function'
        base.options.beforeInit.apply this, [ base.$elem ]
      if typeof base.options.jsonPath == 'string'
        url = base.options.jsonPath
        $.getJSON url, getData
      else
        base.logIn()
      return
    logIn: (action) ->
      base = this
      base.$elem.data('owl-originalStyles', base.$elem.attr('style')).data 'owl-originalClasses', base.$elem.attr('class')
      base.$elem.css opacity: 0
      base.orignalItems = base.options.items
      base.checkBrowser()
      base.wrapperWidth = 0
      base.checkVisible
      base.setVars()
      return
    setVars: ->
      base = this
      if base.$elem.children().length == 0
        return false
      base.baseClass()
      base.eventTypes()
      base.$userItems = base.$elem.children()
      base.itemsAmount = base.$userItems.length
      base.wrapItems()
      base.$owlItems = base.$elem.find('.owl-item')
      base.$owlWrapper = base.$elem.find('.owl-wrapper')
      base.playDirection = 'next'
      base.prevItem = 0
      base.prevArr = [ 0 ]
      base.currentItem = 0
      base.customEvents()
      base.onStartup()
      return
    onStartup: ->
      base = this
      base.updateItems()
      base.calculateAll()
      base.buildControls()
      base.updateControls()
      base.response()
      base.moveEvents()
      base.stopOnHover()
      base.owlStatus()
      if base.options.transitionStyle != false
        base.transitionTypes base.options.transitionStyle
      if base.options.autoPlay == true
        base.options.autoPlay = 5000
      base.play()
      base.$elem.find('.owl-wrapper').css 'display', 'block'
      if !base.$elem.is(':visible')
        base.watchVisibility()
      else
        base.$elem.css 'opacity', 1
      base.onstartup = false
      base.eachMoveUpdate()
      if typeof base.options.afterInit == 'function'
        base.options.afterInit.apply this, [ base.$elem ]
      return
    eachMoveUpdate: ->
      base = this
      if base.options.lazyLoad == true
        base.lazyLoad()
      if base.options.autoHeight == true
        base.autoHeight()
      base.onVisibleItems()
      if typeof base.options.afterAction == 'function'
        base.options.afterAction.apply this, [ base.$elem ]
      return
    updateVars: ->
      base = this
      if typeof base.options.beforeUpdate == 'function'
        base.options.beforeUpdate.apply this, [ base.$elem ]
      base.watchVisibility()
      base.updateItems()
      base.calculateAll()
      base.updatePosition()
      base.updateControls()
      base.eachMoveUpdate()
      if typeof base.options.afterUpdate == 'function'
        base.options.afterUpdate.apply this, [ base.$elem ]
      return
    reload: (elements) ->
      base = this
      setTimeout (->
        base.updateVars()
        return
      ), 0
      return
    watchVisibility: ->
      base = this
      if base.$elem.is(':visible') == false
        base.$elem.css opacity: 0
        clearInterval base.autoPlayInterval
        clearInterval base.checkVisible
      else
        return false
      base.checkVisible = setInterval((->
        if base.$elem.is(':visible')
          base.reload()
          base.$elem.animate { opacity: 1 }, 200
          clearInterval base.checkVisible
        return
      ), 500)
      return
    wrapItems: ->
      base = this
      base.$userItems.wrapAll('<div class="owl-wrapper">').wrap '<div class="owl-item"></div>'
      base.$elem.find('.owl-wrapper').wrap '<div class="owl-wrapper-outer">'
      base.wrapperOuter = base.$elem.find('.owl-wrapper-outer')
      base.$elem.css 'display', 'block'
      return
    baseClass: ->
      base = this
      hasBaseClass = base.$elem.hasClass(base.options.baseClass)
      hasThemeClass = base.$elem.hasClass(base.options.theme)
      if !hasBaseClass
        base.$elem.addClass base.options.baseClass
      if !hasThemeClass
        base.$elem.addClass base.options.theme
      return
    updateItems: ->
      base = this
      if base.options.responsive == false
        return false
      if base.options.singleItem == true
        base.options.items = base.orignalItems = 1
        base.options.itemsCustom = false
        base.options.itemsDesktop = false
        base.options.itemsDesktopSmall = false
        base.options.itemsTablet = false
        base.options.itemsTabletSmall = false
        base.options.itemsMobile = false
        return false
      width = $(base.options.responsiveBaseWidth).width()
      if width > (base.options.itemsDesktop[0] or base.orignalItems)
        base.options.items = base.orignalItems
      if typeof base.options.itemsCustom != 'undefined' and base.options.itemsCustom != false
        #Reorder array by screen size
        base.options.itemsCustom.sort (a, b) ->
          a[0] - (b[0])
        for i of base.options.itemsCustom
          if typeof base.options.itemsCustom[i] != 'undefined' and base.options.itemsCustom[i][0] <= width
            base.options.items = base.options.itemsCustom[i][1]
      else
        if width <= base.options.itemsDesktop[0] and base.options.itemsDesktop != false
          base.options.items = base.options.itemsDesktop[1]
        if width <= base.options.itemsDesktopSmall[0] and base.options.itemsDesktopSmall != false
          base.options.items = base.options.itemsDesktopSmall[1]
        if width <= base.options.itemsTablet[0] and base.options.itemsTablet != false
          base.options.items = base.options.itemsTablet[1]
        if width <= base.options.itemsTabletSmall[0] and base.options.itemsTabletSmall != false
          base.options.items = base.options.itemsTabletSmall[1]
        if width <= base.options.itemsMobile[0] and base.options.itemsMobile != false
          base.options.items = base.options.itemsMobile[1]
      #if number of items is less than declared
      if base.options.items > base.itemsAmount and base.options.itemsScaleUp == true
        base.options.items = base.itemsAmount
      return
    response: ->
      base = this
      smallDelay = undefined
      if base.options.responsive != true
        return false
      lastWindowWidth = $(window).width()

      base.resizer = ->
        if $(window).width() != lastWindowWidth
          if base.options.autoPlay != false
            clearInterval base.autoPlayInterval
          clearTimeout smallDelay
          smallDelay = setTimeout((->
            lastWindowWidth = $(window).width()
            base.updateVars()
            return
          ), base.options.responsiveRefreshRate)
        return

      $(window).resize base.resizer
      return
    updatePosition: ->
      base = this
      base.jumpTo base.currentItem
      if base.options.autoPlay != false
        base.checkAp()
      return
    appendItemsSizes: ->
      base = this
      roundPages = 0
      lastItem = base.itemsAmount - (base.options.items)
      base.$owlItems.each (index) ->
        $this = $(this)
        $this.css('width': base.itemWidth).data 'owl-item', Number(index)
        if index % base.options.items == 0 or index == lastItem
          if !(index > lastItem)
            roundPages += 1
        $this.data 'owl-roundPages', roundPages
        return
      return
    appendWrapperSizes: ->
      `var width`
      base = this
      width = 0
      width = base.$owlItems.length * base.itemWidth
      base.$owlWrapper.css
        'width': width * 2
        'left': 0
      base.appendItemsSizes()
      return
    calculateAll: ->
      base = this
      base.calculateWidth()
      base.appendWrapperSizes()
      base.loops()
      base.max()
      return
    calculateWidth: ->
      base = this
      base.itemWidth = Math.round(base.$elem.width() / base.options.items)
      return
    max: ->
      base = this
      maximum = (base.itemsAmount * base.itemWidth - (base.options.items * base.itemWidth)) * -1
      if base.options.items > base.itemsAmount
        base.maximumItem = 0
        maximum = 0
        base.maximumPixels = 0
      else
        base.maximumItem = base.itemsAmount - (base.options.items)
        base.maximumPixels = maximum
      maximum
    min: ->
      0
    loops: ->
      base = this
      base.positionsInArray = [ 0 ]
      base.pagesInArray = []
      prev = 0
      elWidth = 0
      i = 0
      while i < base.itemsAmount
        elWidth += base.itemWidth
        base.positionsInArray.push -elWidth
        if base.options.scrollPerPage == true
          item = $(base.$owlItems[i])
          roundPageNum = item.data('owl-roundPages')
          if roundPageNum != prev
            base.pagesInArray[prev] = base.positionsInArray[i]
            prev = roundPageNum
        i++
      return
    buildControls: ->
      base = this
      if base.options.navigation == true or base.options.pagination == true
        base.owlControls = $('<div class="owl-controls"/>').toggleClass('clickable', !base.browser.isTouch).appendTo(base.$elem)
      if base.options.pagination == true
        base.buildPagination()
      if base.options.navigation == true
        base.buildButtons()
      return
    buildButtons: ->
      base = this
      buttonsWrapper = $('<div class="owl-buttons"/>')
      base.owlControls.append buttonsWrapper
      base.buttonPrev = $('<div/>',
        'class': 'owl-prev'
        'html': base.options.navigationText[0] or '')
      base.buttonNext = $('<div/>',
        'class': 'owl-next'
        'html': base.options.navigationText[1] or '')
      buttonsWrapper.append(base.buttonPrev).append base.buttonNext
      buttonsWrapper.on 'touchstart.owlControls mousedown.owlControls', 'div[class^="owl"]', (event) ->
        event.preventDefault()
        return
      buttonsWrapper.on 'touchend.owlControls mouseup.owlControls', 'div[class^="owl"]', (event) ->
        event.preventDefault()
        if $(this).hasClass('owl-next')
          base.next()
        else
          base.prev()
        return
      return
    buildPagination: ->
      base = this
      base.paginationWrapper = $('<div class="owl-pagination"/>')
      base.owlControls.append base.paginationWrapper
      base.paginationWrapper.on 'touchend.owlControls mouseup.owlControls', '.owl-page', (event) ->
        event.preventDefault()
        if Number($(this).data('owl-page')) != base.currentItem
          base.goTo Number($(this).data('owl-page')), true
        return
      return
    updatePagination: ->
      base = this
      if base.options.pagination == false
        return false
      base.paginationWrapper.html ''
      counter = 0
      lastPage = base.itemsAmount - (base.itemsAmount % base.options.items)
      i = 0
      while i < base.itemsAmount
        if i % base.options.items == 0
          counter += 1
          if lastPage == i
            lastItem = base.itemsAmount - (base.options.items)
          paginationButton = $('<div/>', 'class': 'owl-page')
          paginationButtonInner = $('<span></span>',
            'text': if base.options.paginationNumbers == true then counter else ''
            'class': if base.options.paginationNumbers == true then 'owl-numbers' else '')
          paginationButton.append paginationButtonInner
          paginationButton.data 'owl-page', if lastPage == i then lastItem else i
          paginationButton.data 'owl-roundPages', counter
          base.paginationWrapper.append paginationButton
        i++
      base.checkPagination()
      return
    checkPagination: ->
      base = this
      if base.options.pagination == false
        return false
      base.paginationWrapper.find('.owl-page').each (i, v) ->
        if $(this).data('owl-roundPages') == $(base.$owlItems[base.currentItem]).data('owl-roundPages')
          base.paginationWrapper.find('.owl-page').removeClass 'active'
          $(this).addClass 'active'
        return
      return
    checkNavigation: ->
      base = this
      if base.options.navigation == false
        return false
      if base.options.rewindNav == false
        if base.currentItem == 0 and base.maximumItem == 0
          base.buttonPrev.addClass 'disabled'
          base.buttonNext.addClass 'disabled'
        else if base.currentItem == 0 and base.maximumItem != 0
          base.buttonPrev.addClass 'disabled'
          base.buttonNext.removeClass 'disabled'
        else if base.currentItem == base.maximumItem
          base.buttonPrev.removeClass 'disabled'
          base.buttonNext.addClass 'disabled'
        else if base.currentItem != 0 and base.currentItem != base.maximumItem
          base.buttonPrev.removeClass 'disabled'
          base.buttonNext.removeClass 'disabled'
      return
    updateControls: ->
      base = this
      base.updatePagination()
      base.checkNavigation()
      if base.owlControls
        if base.options.items >= base.itemsAmount
          base.owlControls.hide()
        else
          base.owlControls.show()
      return
    destroyControls: ->
      base = this
      if base.owlControls
        base.owlControls.remove()
      return
    next: (speed) ->
      base = this
      if base.isTransition
        return false
      base.currentItem += if base.options.scrollPerPage == true then base.options.items else 1
      if base.currentItem > base.maximumItem + (if base.options.scrollPerPage == true then base.options.items - 1 else 0)
        if base.options.rewindNav == true
          base.currentItem = 0
          speed = 'rewind'
        else
          base.currentItem = base.maximumItem
          return false
      base.goTo base.currentItem, speed
      return
    prev: (speed) ->
      base = this
      if base.isTransition
        return false
      if base.options.scrollPerPage == true and base.currentItem > 0 and base.currentItem < base.options.items
        base.currentItem = 0
      else
        base.currentItem -= if base.options.scrollPerPage == true then base.options.items else 1
      if base.currentItem < 0
        if base.options.rewindNav == true
          base.currentItem = base.maximumItem
          speed = 'rewind'
        else
          base.currentItem = 0
          return false
      base.goTo base.currentItem, speed
      return
    goTo: (position, speed, drag) ->
      base = this
      if base.isTransition
        return false
      if typeof base.options.beforeMove == 'function'
        base.options.beforeMove.apply this, [ base.$elem ]
      if position >= base.maximumItem
        position = base.maximumItem
      else if position <= 0
        position = 0
      base.currentItem = base.owl.currentItem = position
      if base.options.transitionStyle != false and drag != 'drag' and base.options.items == 1 and base.browser.support3d == true
        base.swapSpeed 0
        if base.browser.support3d == true
          base.transition3d base.positionsInArray[position]
        else
          base.css2slide base.positionsInArray[position], 1
        base.afterGo()
        base.singleItemTransition()
        return false
      goToPixel = base.positionsInArray[position]
      if base.browser.support3d == true
        base.isCss3Finish = false
        if speed == true
          base.swapSpeed 'paginationSpeed'
          setTimeout (->
            base.isCss3Finish = true
            return
          ), base.options.paginationSpeed
        else if speed == 'rewind'
          base.swapSpeed base.options.rewindSpeed
          setTimeout (->
            base.isCss3Finish = true
            return
          ), base.options.rewindSpeed
        else
          base.swapSpeed 'slideSpeed'
          setTimeout (->
            base.isCss3Finish = true
            return
          ), base.options.slideSpeed
        base.transition3d goToPixel
      else
        if speed == true
          base.css2slide goToPixel, base.options.paginationSpeed
        else if speed == 'rewind'
          base.css2slide goToPixel, base.options.rewindSpeed
        else
          base.css2slide goToPixel, base.options.slideSpeed
      base.afterGo()
      return
    jumpTo: (position) ->
      base = this
      if typeof base.options.beforeMove == 'function'
        base.options.beforeMove.apply this, [ base.$elem ]
      if position >= base.maximumItem or position == -1
        position = base.maximumItem
      else if position <= 0
        position = 0
      base.swapSpeed 0
      if base.browser.support3d == true
        base.transition3d base.positionsInArray[position]
      else
        base.css2slide base.positionsInArray[position], 1
      base.currentItem = base.owl.currentItem = position
      base.afterGo()
      return
    afterGo: ->
      base = this
      base.prevArr.push base.currentItem
      base.prevItem = base.owl.prevItem = base.prevArr[base.prevArr.length - 2]
      base.prevArr.shift 0
      if base.prevItem != base.currentItem
        base.checkPagination()
        base.checkNavigation()
        base.eachMoveUpdate()
        if base.options.autoPlay != false
          base.checkAp()
      if typeof base.options.afterMove == 'function' and base.prevItem != base.currentItem
        base.options.afterMove.apply this, [ base.$elem ]
      return
    stop: ->
      base = this
      base.apStatus = 'stop'
      clearInterval base.autoPlayInterval
      return
    checkAp: ->
      base = this
      if base.apStatus != 'stop'
        base.play()
      return
    play: ->
      base = this
      base.apStatus = 'play'
      if base.options.autoPlay == false
        return false
      clearInterval base.autoPlayInterval
      base.autoPlayInterval = setInterval((->
        base.next true
        return
      ), base.options.autoPlay)
      return
    swapSpeed: (action) ->
      base = this
      if action == 'slideSpeed'
        base.$owlWrapper.css base.addCssSpeed(base.options.slideSpeed)
      else if action == 'paginationSpeed'
        base.$owlWrapper.css base.addCssSpeed(base.options.paginationSpeed)
      else if typeof action != 'string'
        base.$owlWrapper.css base.addCssSpeed(action)
      return
    addCssSpeed: (speed) ->
      base = this
      {
        '-webkit-transition': 'all ' + speed + 'ms ease'
        '-moz-transition': 'all ' + speed + 'ms ease'
        '-o-transition': 'all ' + speed + 'ms ease'
        'transition': 'all ' + speed + 'ms ease'
      }
    removeTransition: ->
      {
        '-webkit-transition': ''
        '-moz-transition': ''
        '-o-transition': ''
        'transition': ''
      }
    doTranslate: (pixels) ->
      {
        '-webkit-transform': 'translate3d(' + pixels + 'px, 0px, 0px)'
        '-moz-transform': 'translate3d(' + pixels + 'px, 0px, 0px)'
        '-o-transform': 'translate3d(' + pixels + 'px, 0px, 0px)'
        '-ms-transform': 'translate3d(' + pixels + 'px, 0px, 0px)'
        'transform': 'translate3d(' + pixels + 'px, 0px,0px)'
      }
    transition3d: (value) ->
      base = this
      base.$owlWrapper.css base.doTranslate(value)
      return
    css2move: (value) ->
      base = this
      base.$owlWrapper.css 'left': value
      return
    css2slide: (value, speed) ->
      base = this
      base.isCssFinish = false
      base.$owlWrapper.stop(true, true).animate { 'left': value },
        duration: speed or base.options.slideSpeed
        complete: ->
          base.isCssFinish = true
          return
      return
    checkBrowser: ->
      base = this
      #Check 3d support
      translate3D = 'translate3d(0px, 0px, 0px)'
      tempElem = document.createElement('div')
      tempElem.style.cssText = '  -moz-transform:' + translate3D + '; -ms-transform:' + translate3D + '; -o-transform:' + translate3D + '; -webkit-transform:' + translate3D + '; transform:' + translate3D
      regex = /translate3d\(0px, 0px, 0px\)/g
      asSupport = tempElem.style.cssText.match(regex)
      support3d = asSupport != null and asSupport.length == 1
      isTouch = 'ontouchstart' of window or navigator.msMaxTouchPoints
      base.browser =
        'support3d': support3d
        'isTouch': isTouch
      return
    moveEvents: ->
      base = this
      if base.options.mouseDrag != false or base.options.touchDrag != false
        base.gestures()
        base.disabledEvents()
      return
    eventTypes: ->
      base = this
      types = [
        's'
        'e'
        'x'
      ]
      base.ev_types = {}
      if base.options.mouseDrag == true and base.options.touchDrag == true
        types = [
          'touchstart.owl mousedown.owl'
          'touchmove.owl mousemove.owl'
          'touchend.owl touchcancel.owl mouseup.owl'
        ]
      else if base.options.mouseDrag == false and base.options.touchDrag == true
        types = [
          'touchstart.owl'
          'touchmove.owl'
          'touchend.owl touchcancel.owl'
        ]
      else if base.options.mouseDrag == true and base.options.touchDrag == false
        types = [
          'mousedown.owl'
          'mousemove.owl'
          'mouseup.owl'
        ]
      base.ev_types['start'] = types[0]
      base.ev_types['move'] = types[1]
      base.ev_types['end'] = types[2]
      return
    disabledEvents: ->
      base = this
      base.$elem.on 'dragstart.owl', (event) ->
        event.preventDefault()
        return
      base.$elem.on 'mousedown.disableTextSelect', (e) ->
        $(e.target).is 'input, textarea, select, option'
      return
    gestures: ->
      base = this
      locals =
        offsetX: 0
        offsetY: 0
        baseElWidth: 0
        relativePos: 0
        position: null
        minSwipe: null
        maxSwipe: null
        sliding: null
        dargging: null
        targetElement: null

      getTouches = (event) ->
        if event.touches
          {
            x: event.touches[0].pageX
            y: event.touches[0].pageY
          }
        else
          if event.pageX != undefined
            {
              x: event.pageX
              y: event.pageY
            }
          else
            {
              x: event.clientX
              y: event.clientY
            }

      swapEvents = (type) ->
        if type == 'on'
          $(document).on base.ev_types['move'], dragMove
          $(document).on base.ev_types['end'], dragEnd
        else if type == 'off'
          $(document).off base.ev_types['move']
          $(document).off base.ev_types['end']
        return

      dragStart = (event) ->
        `var event`
        event = event.originalEvent or event or window.event
        if event.which == 3
          return false
        if base.itemsAmount <= base.options.items
          return
        if base.isCssFinish == false and !base.options.dragBeforeAnimFinish
          return false
        if base.isCss3Finish == false and !base.options.dragBeforeAnimFinish
          return false
        if base.options.autoPlay != false
          clearInterval base.autoPlayInterval
        if base.browser.isTouch != true and !base.$owlWrapper.hasClass('grabbing')
          base.$owlWrapper.addClass 'grabbing'
        base.newPosX = 0
        base.newRelativeX = 0
        $(this).css base.removeTransition()
        position = $(this).position()
        locals.relativePos = position.left
        locals.offsetX = getTouches(event).x - (position.left)
        locals.offsetY = getTouches(event).y - (position.top)
        swapEvents 'on'
        locals.sliding = false
        locals.targetElement = event.target or event.srcElement
        return

      dragMove = (event) ->
        `var event`
        event = event.originalEvent or event or window.event
        base.newPosX = getTouches(event).x - (locals.offsetX)
        base.newPosY = getTouches(event).y - (locals.offsetY)
        base.newRelativeX = base.newPosX - (locals.relativePos)
        if typeof base.options.startDragging == 'function' and locals.dragging != true and base.newRelativeX != 0
          locals.dragging = true
          base.options.startDragging.apply base, [ base.$elem ]
        if base.newRelativeX > 8 or base.newRelativeX < -8 and base.browser.isTouch == true
          if event.preventDefault then event.preventDefault() else (event.returnValue = false)
          locals.sliding = true
        if (base.newPosY > 10 or base.newPosY < -10) and locals.sliding == false
          $(document).off 'touchmove.owl'

        minSwipe = ->
          base.newRelativeX / 5

        maxSwipe = ->
          base.maximumPixels + base.newRelativeX / 5

        base.newPosX = Math.max(Math.min(base.newPosX, minSwipe()), maxSwipe())
        if base.browser.support3d == true
          base.transition3d base.newPosX
        else
          base.css2move base.newPosX
        return

      dragEnd = (event) ->
        `var event`
        event = event.originalEvent or event or window.event
        event.target = event.target or event.srcElement
        locals.dragging = false
        if base.browser.isTouch != true
          base.$owlWrapper.removeClass 'grabbing'
        if base.newRelativeX < 0
          base.dragDirection = base.owl.dragDirection = 'left'
        else
          base.dragDirection = base.owl.dragDirection = 'right'
        if base.newRelativeX != 0
          newPosition = base.getNewPosition()
          base.goTo newPosition, false, 'drag'
          if locals.targetElement == event.target and base.browser.isTouch != true
            $(event.target).on 'click.disable', (ev) ->
              ev.stopImmediatePropagation()
              ev.stopPropagation()
              ev.preventDefault()
              $(event.target).off 'click.disable'
              return
            handlers = $._data(event.target, 'events')['click']
            owlStopEvent = handlers.pop()
            handlers.splice 0, 0, owlStopEvent
        swapEvents 'off'
        return

      base.isCssFinish = true
      base.$elem.on base.ev_types['start'], '.owl-wrapper', dragStart
      return
    getNewPosition: ->
      base = this
      newPosition = undefined
      newPosition = base.closestItem()
      if newPosition > base.maximumItem
        base.currentItem = base.maximumItem
        newPosition = base.maximumItem
      else if base.newPosX >= 0
        newPosition = 0
        base.currentItem = 0
      newPosition
    closestItem: ->
      base = this
      array = if base.options.scrollPerPage == true then base.pagesInArray else base.positionsInArray
      goal = base.newPosX
      closest = null
      $.each array, (i, v) ->
        if goal - (base.itemWidth / 20) > array[i + 1] and goal - (base.itemWidth / 20) < v and base.moveDirection() == 'left'
          closest = v
          if base.options.scrollPerPage == true
            base.currentItem = $.inArray(closest, base.positionsInArray)
          else
            base.currentItem = i
        else if goal + base.itemWidth / 20 < v and goal + base.itemWidth / 20 > (array[i + 1] or array[i] - (base.itemWidth)) and base.moveDirection() == 'right'
          if base.options.scrollPerPage == true
            closest = array[i + 1] or array[array.length - 1]
            base.currentItem = $.inArray(closest, base.positionsInArray)
          else
            closest = array[i + 1]
            base.currentItem = i + 1
        return
      base.currentItem
    moveDirection: ->
      base = this
      direction = undefined
      if base.newRelativeX < 0
        direction = 'right'
        base.playDirection = 'next'
      else
        direction = 'left'
        base.playDirection = 'prev'
      direction
    customEvents: ->
      base = this
      base.$elem.on 'owl.next', ->
        base.next()
        return
      base.$elem.on 'owl.prev', ->
        base.prev()
        return
      base.$elem.on 'owl.play', (event, speed) ->
        base.options.autoPlay = speed
        base.play()
        base.hoverStatus = 'play'
        return
      base.$elem.on 'owl.stop', ->
        base.stop()
        base.hoverStatus = 'stop'
        return
      base.$elem.on 'owl.goTo', (event, item) ->
        base.goTo item
        return
      base.$elem.on 'owl.jumpTo', (event, item) ->
        base.jumpTo item
        return
      return
    stopOnHover: ->
      base = this
      if base.options.stopOnHover == true and base.browser.isTouch != true and base.options.autoPlay != false
        base.$elem.on 'mouseover', ->
          base.stop()
          return
        base.$elem.on 'mouseout', ->
          if base.hoverStatus != 'stop'
            base.play()
          return
      return
    lazyLoad: ->
      base = this
      if base.options.lazyLoad == false
        return false
      i = 0
      while i < base.itemsAmount
        $item = $(base.$owlItems[i])
        if $item.data('owl-loaded') == 'loaded'
          i++
          continue
        itemNumber = $item.data('owl-item')
        $lazyImg = $item.find('.lazyOwl')
        follow = undefined
        if typeof $lazyImg.data('src') != 'string'
          $item.data 'owl-loaded', 'loaded'
          i++
          continue
        if $item.data('owl-loaded') == undefined
          $lazyImg.hide()
          $item.addClass('loading').data 'owl-loaded', 'checked'
        if base.options.lazyFollow == true
          follow = itemNumber >= base.currentItem
        else
          follow = true
        if follow and itemNumber < base.currentItem + base.options.items and $lazyImg.length
          base.lazyPreload $item, $lazyImg
        i++
      return
    lazyPreload: ($item, $lazyImg) ->
      base = this
      iterations = 0

      checkLazyImage = ->
        iterations += 1
        if base.completeImg($lazyImg.get(0)) or isBackgroundImg == true
          showImage()
        else if iterations <= 100
          #if image loads in less than 10 seconds
          setTimeout checkLazyImage, 100
        else
          showImage()
        return

      showImage = ->
        $item.data('owl-loaded', 'loaded').removeClass 'loading'
        $lazyImg.removeAttr 'data-src'
        if base.options.lazyEffect == 'fade' then $lazyImg.fadeIn(400) else $lazyImg.show()
        if typeof base.options.afterLazyLoad == 'function'
          base.options.afterLazyLoad.apply this, [ base.$elem ]
        return

      if $lazyImg.prop('tagName') == 'DIV'
        $lazyImg.css 'background-image', 'url(' + $lazyImg.data('src') + ')'
        isBackgroundImg = true
      else
        $lazyImg[0].src = $lazyImg.data('src')
      checkLazyImage()
      return
    autoHeight: ->
      base = this
      $currentimg = $(base.$owlItems[base.currentItem]).find('img')

      checkImage = ->
        iterations += 1
        if base.completeImg($currentimg.get(0))
          addHeight()
        else if iterations <= 100
          #if image loads in less than 10 seconds
          setTimeout checkImage, 100
        else
          base.wrapperOuter.css 'height', ''
          #Else remove height attribute
        return

      addHeight = ->
        $currentItem = $(base.$owlItems[base.currentItem]).height()
        base.wrapperOuter.css 'height', $currentItem + 'px'
        if !base.wrapperOuter.hasClass('autoHeight')
          setTimeout (->
            base.wrapperOuter.addClass 'autoHeight'
            return
          ), 0
        return

      if $currentimg.get(0) != undefined
        iterations = 0
        checkImage()
      else
        addHeight()
      return
    completeImg: (img) ->
      if !img.complete
        return false
      if typeof img.naturalWidth != 'undefined' and img.naturalWidth == 0
        return false
      true
    onVisibleItems: ->
      base = this
      if base.options.addClassActive == true
        base.$owlItems.removeClass 'active'
      base.visibleItems = []
      i = base.currentItem
      while i < base.currentItem + base.options.items
        base.visibleItems.push i
        if base.options.addClassActive == true
          $(base.$owlItems[i]).addClass 'active'
        i++
      base.owl.visibleItems = base.visibleItems
      return
    transitionTypes: (className) ->
      base = this
      #Currently available: "fade","backSlide","goDown","fadeUp"
      base.outClass = 'owl-' + className + '-out'
      base.inClass = 'owl-' + className + '-in'
      return
    singleItemTransition: ->
      base = this

      transStyles = (prevPos, zindex) ->
        {
          'position': 'relative'
          'left': prevPos + 'px'
        }

      base.isTransition = true
      outClass = base.outClass
      inClass = base.inClass
      $currentItem = base.$owlItems.eq(base.currentItem)
      $prevItem = base.$owlItems.eq(base.prevItem)
      prevPos = Math.abs(base.positionsInArray[base.currentItem]) + base.positionsInArray[base.prevItem]
      origin = Math.abs(base.positionsInArray[base.currentItem]) + base.itemWidth / 2
      base.$owlWrapper.addClass('owl-origin').css
        '-webkit-transform-origin': origin + 'px'
        '-moz-perspective-origin': origin + 'px'
        'perspective-origin': origin + 'px'
      animEnd = 'webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend'
      $prevItem.css(transStyles(prevPos, 10)).addClass(outClass).on animEnd, ->
        base.endPrev = true
        $prevItem.off animEnd
        base.clearTransStyle $prevItem, outClass
        return
      $currentItem.addClass(inClass).on animEnd, ->
        base.endCurrent = true
        $currentItem.off animEnd
        base.clearTransStyle $currentItem, inClass
        return
      return
    clearTransStyle: (item, classToRemove) ->
      base = this
      item.css(
        'position': ''
        'left': '').removeClass classToRemove
      if base.endPrev and base.endCurrent
        base.$owlWrapper.removeClass 'owl-origin'
        base.endPrev = false
        base.endCurrent = false
        base.isTransition = false
      return
    owlStatus: ->
      base = this
      base.owl =
        'userOptions': base.userOptions
        'baseElement': base.$elem
        'userItems': base.$userItems
        'owlItems': base.$owlItems
        'currentItem': base.currentItem
        'prevItem': base.prevItem
        'visibleItems': base.visibleItems
        'isTouch': base.browser.isTouch
        'browser': base.browser
        'dragDirection': base.dragDirection
      return
    clearEvents: ->
      base = this
      base.$elem.off '.owl owl mousedown.disableTextSelect'
      $(document).off '.owl owl'
      $(window).off 'resize', base.resizer
      return
    unWrap: ->
      base = this
      if base.$elem.children().length != 0
        base.$owlWrapper.unwrap()
        base.$userItems.unwrap().unwrap()
        if base.owlControls
          base.owlControls.remove()
      base.clearEvents()
      base.$elem.attr('style', base.$elem.data('owl-originalStyles') or '').attr 'class', base.$elem.data('owl-originalClasses')
      return
    destroy: ->
      base = this
      base.stop()
      clearInterval base.checkVisible
      base.unWrap()
      base.$elem.removeData()
      return
    reinit: (newOptions) ->
      base = this
      options = $.extend({}, base.userOptions, newOptions)
      base.unWrap()
      base.init options, base.$elem
      return
    addItem: (htmlString, targetPosition) ->
      base = this
      position = undefined
      if !htmlString
        return false
      if base.$elem.children().length == 0
        base.$elem.append htmlString
        base.setVars()
        return false
      base.unWrap()
      if targetPosition == undefined or targetPosition == -1
        position = -1
      else
        position = targetPosition
      if position >= base.$userItems.length or position == -1
        base.$userItems.eq(-1).after htmlString
      else
        base.$userItems.eq(position).before htmlString
      base.setVars()
      return
    removeItem: (targetPosition) ->
      base = this
      position = undefined
      if base.$elem.children().length == 0
        return false
      if targetPosition == undefined or targetPosition == -1
        position = -1
      else
        position = targetPosition
      base.unWrap()
      base.$userItems.eq(position).remove()
      base.setVars()
      return

  $.fn.owlCarousel = (options) ->
    @each ->
      if $(this).data('owl-init') == true
        return false
      $(this).data 'owl-init', true
      carousel = Object.create(Carousel)
      carousel.init options, this
      $.data this, 'owlCarousel', carousel
      return

  $.fn.owlCarousel.options =
    items: 1
    itemsCustom: false
    itemsDesktop: [
      1199
      4
    ]
    itemsDesktopSmall: [
      979
      4
    ]
    itemsTablet: [
      768
      3
    ]
    itemsTabletSmall: false
    itemsMobile: [
      480
      2
    ]
    singleItem: false
    itemsScaleUp: false
    slideSpeed: 200
    paginationSpeed: 800
    rewindSpeed: 1000
    autoPlay: false
    stopOnHover: false
    navigation: false
    navigationText: [
      'prev'
      'next'
    ]
    rewindNav: true
    scrollPerPage: false
    pagination: true
    paginationNumbers: false
    responsive: true
    responsiveRefreshRate: 200
    responsiveBaseWidth: window
    baseClass: 'owl-carousel'
    theme: 'owl-theme'
    lazyLoad: false
    lazyFollow: true
    lazyEffect: 'fade'
    autoHeight: false
    jsonPath: false
    jsonSuccess: false
    dragBeforeAnimFinish: true
    mouseDrag: true
    touchDrag: true
    addClassActive: false
    transitionStyle: false
    beforeUpdate: false
    afterUpdate: false
    beforeInit: false
    afterInit: false
    beforeMove: false
    afterMove: false
    afterAction: false
    startDragging: false
    afterLazyLoad: false
  return
) jQuery, window, document

# ---
# generated by js2coffee 2.2.0
