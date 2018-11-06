class Product < ActiveRecord::Base
  belongs_to :subcategory

  has_attached_file :avatar, :styles => { medium: ["50x50"], thumb: ["300x300#", :png],
                                                    original: [:png] }
  validates_attachment :avatar,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 1.megabyte }
end
