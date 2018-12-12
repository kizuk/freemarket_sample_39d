class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: true
      t.text   :explain, null: true
      t.string :size
      t.string :condition, null: true
      t.string :shipping_cost, null: true
      t.string :area, null: true
      t.integer :price, null: true
      t.string :status, null: true
      t.timestamps null:true
      t.references :lcategories, null: true
      t.references :mcategories, null: true
      t.references :scategories, null: true
      t.references :brands
    end
    add_index :items, :name
  end
end
