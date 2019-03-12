class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.date :match_date
      t.time :match_time
      t.string :location
      t.string :street
      t.string :street_2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps
    end
  end
end
