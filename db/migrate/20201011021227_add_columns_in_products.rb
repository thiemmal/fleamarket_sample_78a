class AddColumnsInProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :condition_id, :integer
    add_column :products, :days_id, :integer
  end
end
