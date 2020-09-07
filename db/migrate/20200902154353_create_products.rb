class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :user_id
      t.integer :category_id
      t.text :details
      t.string :condition
      t.string :fee_side
      t.string :origin
      t.string :days
      t.integer :price, null: false

      t.timestamps
    end
  end
end
