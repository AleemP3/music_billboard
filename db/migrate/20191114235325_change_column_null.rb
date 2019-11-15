class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :songs, :billboard_id, true
  end
end
