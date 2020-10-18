class RemoveColumnsInProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :days, :string
    remove_column :products, :condition, :string
  end
end
