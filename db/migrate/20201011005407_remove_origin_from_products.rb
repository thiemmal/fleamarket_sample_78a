class RemoveOriginFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :origin, :string
  end
end
