class MenuItem < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price_in_cents
  belongs_to :category

  def price_in_dollars
    (price_in_cents.to_f / 100).round(2)
  end
end
