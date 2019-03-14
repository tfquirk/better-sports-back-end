class DeleteColoumsFromBets < ActiveRecord::Migration[5.2]
  def change
    remove_column :bets, :odds_win
    remove_column :bets, :odds_draw
    remove_column :bets, :odds_loose

    add_column :bets, :odds, :string
    add_column :bets, :betType, :string

    add_column :games, :winner, :integer
  end
end
