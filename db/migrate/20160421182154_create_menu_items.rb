class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :kind
      t.decimal :price, precision: 8, scale: 2
      t.timestamps null: false
    end
  end
end
