module PersonsHelper
  def subcategory_for_select
    Subcategory.all.map{|elem| [elem.name, elem.id]}
  end
end
