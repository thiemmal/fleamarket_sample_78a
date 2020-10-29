class ChangeColumnToNull < ActiveRecord::Migration[6.0]
  def up
    change_column_null :categories, :name, true
  end
end
