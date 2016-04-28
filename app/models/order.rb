class Order < ActiveRecord::Base
  belongs_to :party
  has_and_belongs_to_many :menu_items
  # has_many :menu_items, through: :menu_items_orders

  def total_price
    menu_items.map(&:price).sum
  end
end
