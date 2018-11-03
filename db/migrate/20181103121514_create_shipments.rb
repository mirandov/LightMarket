class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :name
      t.string :size
      t.string :led_count
      t.string :color_light
      t.integer :price
      t.references :subcategory, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
