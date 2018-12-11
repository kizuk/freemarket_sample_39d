class CreateSCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :s_categories do |t|
      t.string :genre
      t.references :m_categories, null: false, foreign_key: true
      t.timestamps null: true
    end
  end
end
