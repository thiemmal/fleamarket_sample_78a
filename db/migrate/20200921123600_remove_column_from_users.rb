class RemoveColumnFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :gender, :string
    remove_column :users, :recipient, :string
    remove_column :users, :recipient_furigana, :string
  end
end
