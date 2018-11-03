class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many   :products
  has_many   :shipments
  has_attached_file :avatar, :styles => { medium: ["180x200"], thumb: ["300x300#", :png],
                                                    original: [:png] }
  validates_attachment :avatar,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 1.megabyte }
end
