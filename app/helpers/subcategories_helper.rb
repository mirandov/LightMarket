module SubcategoriesHelper
  def point_to(price)
    price = price.to_s
    price = price.split('').reverse
    for i in 0..price.size-1
      if i == 3 && price.size > 3
        price[i] = price[i] + " "
      end
      if i == 6 && price.size > 5
        price[i] = price[i] + " "
      end
    end
    price = price.reverse.join('') + " руб."
  end
end
