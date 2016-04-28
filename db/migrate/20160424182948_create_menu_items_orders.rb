class CreateMenuItemsOrders < ActiveRecord::Migration
  def change
    create_table :menu_items_orders do |t|
      t.references :menu_item
      t.references :order
    end
  end
end
