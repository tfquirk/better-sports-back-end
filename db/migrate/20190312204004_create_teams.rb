class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :league
      t.string :mascot
      t.string :home_stadium
      t.string :stadium_thumbnail
      t.text :stadium_description
      t.string :stadium_location
      t.string :stadium_capacity
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.text :team_description
      t.string :country
      t.string :team_logo

      t.timestamps
    end
  end
end
