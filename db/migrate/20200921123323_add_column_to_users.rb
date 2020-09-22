class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :recipient_family_name, :string
    add_column :users, :recipient_first_name, :string
    add_column :users, :recipient_family_furigana, :string
    add_column :users, :recipient_first_furigana, :string
  end
end
