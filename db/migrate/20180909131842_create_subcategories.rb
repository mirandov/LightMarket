class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :name
      t.attachment :avatar0
      t.attachment :avatar1
      t.attachment :avatar2
      t.attachment :avatar3
      t.attachment :avatar4
      t.attachment :avatar5
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
