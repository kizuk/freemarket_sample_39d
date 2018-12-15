class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.integer :expire
      t.integer :security


      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
