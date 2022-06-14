class ChangeTraderScoreDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:users, :trader_score, 0)
    change_column_default(:users, :trust_score, 0)
  end
end
