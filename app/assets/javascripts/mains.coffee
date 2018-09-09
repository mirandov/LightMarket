###
# Welcome to the new js2coffee 2.0, now
# rewritten to use the esprima parser.
# try it out!
###

$.fn.memenu = (e) ->
  t = interval: 250
  n = 0

  r = ->
    $('.memenu').find('li, a').unbind()
    if window.innerWidth <= 768
      o()
      s()
      if n == 0
        $('.memenu > li:not(.showhide)').hide 0
    else
      u()
      i()
    return

  i = ->
    $('.memenu li').bind('mouseover', ->
      $(this).children('.dropdown, .mepanel').stop().fadeIn t.interval
      return
    ).bind 'mouseleave', ->
      $(this).children('.dropdown, .mepanel').stop().fadeOut t.interval
      return
    return

  s = ->
    $('.memenu > li > a').bind 'click', (e) ->
      if $(this).siblings('.dropdown, .mepanel').css('display') == 'none'
        $(this).siblings('.dropdown, .mepanel').slideDown t.interval
        $(this).siblings('.dropdown').find('ul').slideDown t.interval
        n = 1
      else
        $(this).siblings('.dropdown, .mepanel').slideUp t.interval
      return
    return

  o = ->
    $('.memenu > li.showhide').show 0
    $('.memenu > li.showhide').bind 'click', ->
      if $('.memenu > li').is(':hidden')
        $('.memenu > li').slideDown 300
      else
        $('.memenu > li:not(.showhide)').slideUp 300
        $('.memenu > li.showhide').show 0
      return
    return

  u = ->
    $('.memenu > li').show 0
    $('.memenu > li.showhide').hide 0
    return

  $('.memenu').prepend '<li class=\'showhide\'><span class=\'title\'>MENU</span><span class=\'icon1\'></span><span class=\'icon2\'></span></li>'
  r()
  $(window).resize ->
    r()
    return
  return
