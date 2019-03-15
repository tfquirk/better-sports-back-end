class GamesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :home_team_id, :away_team_id, :match_date, :match_time,
            :location, :street, :street_2, :city, :state, :country, :zip,
            :matchName, :one, :draw, :two, :oneDraw, :twoDraw, :winner

end
