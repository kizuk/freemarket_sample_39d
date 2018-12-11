class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text   :explain, null: false
      t.string :size
      t.string :condition, null: false
      t.string :shipping_cost, null: false
      t.string :area, null: false
      t.integer :price, null: false
      t.string :status, null: false
      t.timestamps null:true
    end
    add_index :items, :name
  end
end
