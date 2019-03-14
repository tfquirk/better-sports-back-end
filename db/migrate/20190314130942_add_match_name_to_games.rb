class AddMatchNameToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :matchName, :string
  end
end
