class Categories < ActiveRecord::Base

  has_many :menu_items
  validates_presence_of :category

  def category
  end
end
