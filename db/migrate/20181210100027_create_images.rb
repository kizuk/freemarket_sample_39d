class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image_url, null: true
      t.references :items, null: true, foreign_key: true
      t.timestamps null: true
    end
  end
end
