class ChangeColumnNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :shops, :user_id, true
  end
end
