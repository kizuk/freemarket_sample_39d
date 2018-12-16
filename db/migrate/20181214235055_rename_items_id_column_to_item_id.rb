class RenameItemsIdColumnToItemId < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :items_id, :item_id
  end
end
