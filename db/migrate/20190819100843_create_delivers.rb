class CreateDelivers < ActiveRecord::Migration
  def change
    create_table :delivers do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
