class PlayersSerializer
  include FastJsonapi::ObjectSerializer
  attributes :nationality, :full_name, :team_name, :date_of_birth, :birth_location,
    :date_signed, :contracted_salary, :wage, :description, :position, :height,
    :weight, :profile_image, :thumbnail, :team_id
    
end
