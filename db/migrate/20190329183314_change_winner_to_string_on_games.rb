class ChangeWinnerToStringOnGames < ActiveRecord::Migration[5.2]
  def change
    change_column :games, :winner, :string
  end
end
