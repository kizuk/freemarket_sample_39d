class CreateCategoryLs < ActiveRecord::Migration[5.2]
  def change
    create_table :category_ls do |t|
      t.string :genre
      t.timestamps null:true
    end
  end
end
