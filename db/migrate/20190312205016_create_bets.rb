class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.float :wager
      t.float :odds_win
      t.float :odds_draw
      t.float :odds_loose
      t.string :currency

      t.timestamps
    end
  end
end
