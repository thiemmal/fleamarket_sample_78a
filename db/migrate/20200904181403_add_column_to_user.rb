class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :gender, :string 
    add_column :users, :first_name, :string, null: false 
    add_column :users, :family_name, :string, null: false 
    add_column :users, :first_furigana, :string, null: false 
    add_column :users, :family_furigana, :string, null: false
    add_column :users, :birthday, :integer, null: false
    add_column :users, :recipient, :string 
    add_column :users, :recipient_furigana, :string 
    add_column :users, :zip_cord, :integer, null: false
    add_column :users, :prefecture, :string, null: false
    add_column :users, :city, :string, null: false
    add_column :users, :address, :string, null: false
    add_column :users, :mansion, :string, null: false
    add_column :users, :tel, :integer
  end
end
