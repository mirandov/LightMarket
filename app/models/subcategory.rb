class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many   :products
  has_many   :shipments
  has_attached_file :avatar0, :styles => { medium: ["180x200"], thumb: ["300x300#", :png],
                                                    original: [:png] }

  has_attached_file :avatar1, :styles => { medium: ["180x200"], thumb: ["300x300#", :png],
                                                    original: [:png] }
  has_attached_file :avatar2,  :styles => { medium: ["180x200"], thumb: ["300x300#", :png],
                                                    original: [:png] }
  has_attached_file :avatar3, :styles => { medium: ["180x200"], thumb: ["300x300#", :png],
                                                    original: [:png] }

  has_attached_file :avatar4, :styles => { medium: ["180x200"], thumb: ["300x300#", :png],
                                                    original: [:png] }
  has_attached_file :avatar5, :styles => { medium: ["180x200"], thumb: ["300x300#", :png],
                                                    original: [:png] }
  validates_attachment :avatar0,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 1.megabyte }
  validates_attachment :avatar1,
                    content_type: { content_type: /\Aimage\/.*\z/ },
                    size: { less_than: 1.megabyte }
  validates_attachment :avatar2,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 1.megabyte }
  validates_attachment :avatar3,
                    content_type: { content_type: /\Aimage\/.*\z/ },
                    size: { less_than: 1.megabyte }
  validates_attachment :avatar4,
                    content_type: { content_type: /\Aimage\/.*\z/ },
                    size: { less_than: 1.megabyte }
  validates_attachment :avatar5,
                    content_type: { content_type: /\Aimage\/.*\z/ },
                    size: { less_than: 1.megabyte }
end
