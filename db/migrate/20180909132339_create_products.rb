class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.string :color_light
      t.integer :price
      t.integer :min_order
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
