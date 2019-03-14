class AddOddsToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :one, :string
    add_column :games, :draw, :string
    add_column :games, :two, :string
    add_column :games, :oneDraw, :string
    add_column :games, :twoDraw, :string
  end
end
