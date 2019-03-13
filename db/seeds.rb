require 'rest-client'
require 'byebug'
require 'json'

uefa_teams = [133738,
  133667,
  133664,
  133602,
  133739,
  133772,
  133681,
  133612,
  133676,
  134108,
  133720,
  134114,
  133647,
  133651,
  134005,
  133707,
  133650,
  133610,
  133758,
  133601,
  133768,
  133987,
  133729,
  133934,
  133725,
  133674,
  133814,
  133960,
  133746,
  133635,
  133717,
  134779,
  133789,
  134166,
  133682,
  133683,
  133666,
  133823,
  133604
]


### GET ALL TEAMS --------------------------------------------------------------
# counter = 0
#
# 39.times do
#   puts("starting")
#   puts counter
#
#   response = RestClient.get("https://www.thesportsdb.com/api/v1/json/1/lookupteam.php?id=#{uefa_teams[counter]}")
#   data = JSON.parse(response)
#
#   team = data["teams"][0]
#
#   name = team["strTeam"]
#   altName = team["strAlternate"]
#   founded = team["intFormedYear"]
#   description = team["strDescriptionEN"]
#   league = team["strLeague"]
#   manager = team["strManager"]
#   stadium_location = team["strStadiumLocation"]
#   home_stadium = team["strStadium"]
#   stadium_thumbnail = team["strStadiumThumb"]
#   stadium_description = team["strStadiumDescription"]
#   stadium_capacity = team["intStadiumCapacity"]
#   website = team["strWebsite"]
#   facebook = team["strFacebook"]
#   twitter = team["strTwitter"]
#   instagram = team["strInstagram"]
#   team_logo = team["strTeamBadge"]
#   team_jersey = team["strTeamJersey"]
#
#   Team.create(
#     name: name,
#     altName: altName,
#     founded: founded,
#     league: league,
#     manager: manager,
#     description: description,
#     stadium_location: stadium_location,
#     home_stadium: home_stadium,
#     stadium_thumbnail: stadium_thumbnail,
#     stadium_description: stadium_description,
#     stadium_capacity: stadium_capacity,
#     website: website,
#     facebook: facebook,
#     twitter: twitter,
#     instagram: instagram,
#     team_logo: team_logo,
#     team_jersey: team_jersey
#   )
#   puts("Ending #{name}")
#
#   counter += 1
#
# end

### END GET ALL TEAMS ----------------------------------------------------------

### START GET ALL PlAYERS ------------------------------------------------------
# 
# playersCounter = 0
#
# 39.times do
#   puts playersCounter
#   response = RestClient.get("https://www.thesportsdb.com/api/v1/json/1/lookup_all_players.php?id=#{uefa_teams[playersCounter]}")
#   data = JSON.parse(response)
#
#   players = data["player"]
#
#   players.each do |player|
#     nationality = player["strNationality"]
#     full_name = player["strPlayer"]
#     team_name = player["strTeam"]
#     date_of_birth = player["dateBorn"]
#     birth_location = player["strBirthLocation"]
#     date_signed = player["dateBorn"]
#     contracted_salary = player["strSigning"]
#     wage = player["strWage"]
#     description = player["strDescriptionEN"]
#     position = player["strPosition"]
#     height = player["strHeight"]
#     weight = player["strWeight"]
#     profile_image = player["strThumb"]
#     thumbnail = player["strCutout"]
#     team = Team.find_by(name: team_name)
#     team_id = team.id
#
#     Player.create(
#       nationality: nationality,
#       full_name: full_name,
#       team_name: team_name,
#       date_of_birth: date_of_birth,
#       birth_location: birth_location,
#       date_signed: date_signed,
#       contracted_salary: contracted_salary,
#       wage: wage,
#       description: description,
#       position: position,
#       height: height,
#       weight: weight,
#       profile_image: profile_image,
#       thumbnail: thumbnail,
#       team_id: team_id,
#     )
#     puts full_name
#   end
#
#   playersCounter += 1
#   puts playersCounter
# end
### END GET ALL PlAYERS --------------------------------------------------------
