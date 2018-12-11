class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_url, null: false
      t.references :items, null: false, foreign_key: true
      t.timestamps null: true
    end
  end
end
