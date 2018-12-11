class CreateLCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :l_categories do |t|
      t.string :genre
      t.timestamps null:true
    end
  end
end
