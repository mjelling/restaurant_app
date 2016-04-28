class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :table_number
      t.references :user
      t.timestamps null: false
    end
  end
end
