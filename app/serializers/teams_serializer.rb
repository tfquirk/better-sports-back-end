class TeamsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :altName, :founded, :league, :manager, :stadium_location,
            :home_stadium, :stadium_thumbnail, :stadium_description, :stadium_capacity,
            :website, :facebook, :twitter, :instagram, :team_logo, :team_jersey,
            :description
end
