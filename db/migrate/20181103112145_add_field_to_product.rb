class AddFieldToProduct < ActiveRecord::Migration
  def change
    add_column :products, :led_count, :string
  end
end
