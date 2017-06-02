class CreateMealItems < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_items do |t|
      t.string :item_name
      t.string :picture
      t.float :price
      t.integer :order_id

      t.timestamps

    end
  end
end
