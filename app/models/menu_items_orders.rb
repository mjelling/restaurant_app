class MenuItemsOrders < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :order
end
