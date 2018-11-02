class AddFieldToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :description, :string
    add_column :categories, :specifications, :text
    add_column :categories, :area, :text
  end
end
