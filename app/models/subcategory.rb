class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many   :products
  has_many   :shipments
end
