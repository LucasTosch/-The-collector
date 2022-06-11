class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:users, :player_score, 0)
  end
end
