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

  def category_for_select
    Category.all.map{|elem| [elem.name, elem.id]}
  end
  def count_avatar(subcategory)
    count = 0
    subcategory.avatar0.present? ? count+=1 : count
    subcategory.avatar1.present? ? count+=1 : count
    subcategory.avatar2.present? ? count+=1 : count
    subcategory.avatar3.present? ? count+=1 : count
    subcategory.avatar4.present? ? count+=1 : count
    subcategory.avatar5.present? ? count+=1 : count
    return count
  end

  def template_file
    # if f = @subcategory.send(filename)
    "Файл существует: #{@subcategory.avatar0_file_name}"
    # end
  end
end
