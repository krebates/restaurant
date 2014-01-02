class Categories < ActiveRecord::Base

  has_many :menu_item
  validates_presence_of :category
end
