class ChangeCategoryIdInProducts < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :category_id, :integer, foreign_key: true
  end
end
