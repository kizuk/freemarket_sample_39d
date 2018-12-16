class AddShippingDateColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :shipping_date, :string
  end
end
