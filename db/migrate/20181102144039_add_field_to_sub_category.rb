class AddFieldToSubCategory < ActiveRecord::Migration
  def change
    add_column :subcategories, :specifications, :text
  end
end
