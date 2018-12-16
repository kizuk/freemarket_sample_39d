class CreateScategories < ActiveRecord::Migration[5.2]
  def change
    create_table :scategories do |t|
      t.string :genre
      t.references :mcategories, null: true, foreign_key: true
      t.timestamps null: true
    end
  end
end
