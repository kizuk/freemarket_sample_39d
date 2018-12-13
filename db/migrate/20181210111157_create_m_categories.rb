class CreateMCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :m_categories do |t|
      t.string :genre
      t.references :l_categories, null: false, foreign_key: true
      t.timestamps null: true
    end
  end
end
