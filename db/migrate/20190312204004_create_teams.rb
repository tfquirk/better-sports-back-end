class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :altName
      t.string :founded
      t.string :league
      t.string :manager
      t.string :stadium_location
      t.string :home_stadium
      t.string :stadium_thumbnail
      t.text :stadium_description
      t.string :stadium_capacity
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :team_logo
      t.string :team_jersey

      t.timestamps
    end
  end
end
