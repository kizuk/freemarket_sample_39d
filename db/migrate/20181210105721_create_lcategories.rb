class CreateLcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :lcategories do |t|
      t.string :genre
      t.timestamps null:true
    end
  end
end
