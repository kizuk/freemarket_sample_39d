class CreateMcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :mcategories do |t|
      t.string :genre
      t.references :lcategories, null: true, foreign_key: true
      t.timestamps null: true
    end
  end
end
