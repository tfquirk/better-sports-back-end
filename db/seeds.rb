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

### Random Matchup of for gamees  ----------------------------------------------

  Game.create(
    home_team_id: 8,
    away_team_id: 1,
    matchName: "#{Team.all[0].name} vs. #{Team.all[1].name}",
    match_date: Time.new(2019, 03, 15),
    match_time: Time.new(2019, 03, 15, 18, 0, 0, "+00:00"),
    location: "Wembly Stadium",
    street: nil,
    street_2: nil,
    city: "London",
    state: nil,
    country: "England",
    zip: "HA9 0WS",
    one: "1.75",
    draw: "3.35",
    two: "0.75",
    oneDraw: "2.75",
    twoDraw: "1.35"
  )

  Game.create(
    home_team_id: 8,
    away_team_id: 9,
    matchName: "#{Team.all[8].name} vs. #{Team.all[9].name}",
    match_date: Time.new(2019, 03, 20),
    match_time: Time.new(2019, 03, 20, 18, 0, 0, "+00:00"),
    location: "Wembly Stadium",
    street: nil,
    street_2: nil,
    city: "London",
    state: nil,
    country: "England",
    zip: "HA9 0WS",
    one: "1.75",
    draw: "3.35",
    two: "0.75",
    oneDraw: "2.75",
    twoDraw: "1.35"
  )

  Game.create(
    home_team_id: 2,
    away_team_id: 3,
    matchName: "#{Team.all[2].name} vs. #{Team.all[3].name}",
    match_date: Time.new(2019, 03, 16),
    match_time: Time.new(2019, 03, 16, 18, 0, 0, "+00:00"),
    location: "Wembly Stadium",
    street: nil,
    street_2: nil,
    city: "London",
    state: nil,
    country: "England",
    zip: "HA9 0WS",
    one: "1.75",
    draw: "3.35",
    two: "0.75",
    oneDraw: "2.75",
    twoDraw: "1.35"
  )

  Game.create(
    home_team_id: 4,
    away_team_id: 5,
    matchName: "#{Team.all[4].name} vs. #{Team.all[5].name}",
    match_date: Time.new(2019, 03, 17),
    match_time: Time.new(2019, 03, 17, 18, 0, 0, "+00:00"),
    location: "Camp Nou",
    street: "C. d'Aristides Maillol, 12",
    street_2: nil,
    city: "Barcelona",
    state: nil,
    country: "Spain",
    zip: "08028",
    one: "1.75",
    draw: "3.35",
    two: "0.75",
    oneDraw: "2.75",
    twoDraw: "1.35"
  )

  Game.create(
    home_team_id: 6,
    away_team_id: 7,
    matchName: "#{Team.all[6].name} vs. #{Team.all[7].name}",
    match_date: Time.new(2019, 03, 19),
    match_time: Time.new(2019, 03, 19, 18, 0, 0, "+00:00"),
    location: "Camp Nou",
    street: "C. d'Aristides Maillol, 12",
    street_2: nil,
    city: "Barcelona",
    state: nil,
    country: "Spain",
    zip: "08028",
    one: "1.75",
    draw: "3.35",
    two: "0.75",
    oneDraw: "2.75",
    twoDraw: "1.35"
  )

### End Random Matchup of for gamees  ------------------------------------------

### Sample User and account ----------------------------------------------------

  User.create(
    first_name: "James",
    last_name: "Bond",
    email: "jbond@bond.org",
    password_digest: "password",
    phone: "555-555-5555",
    street: "Tomorrow Never Dies Ln",
    street_2: nil,
    city: "London",
    state: nil,
    country: "England",
    zip: "HA9 0WS"
  )

  User.create(
    first_name: "Lil Bo",
    last_name: "Peep",
    email: "lilBo@peep.org",
    password_digest: "password",
    phone: "555-555-5555",
    street: "Lost Her Shoe",
    street_2: nil,
    city: "MiddleOfNowhere",
    state: "Iowa",
    country: "USA",
    zip: "10367"
  )

  Account.create(
    user_id: 1,
    balance: "5000",
    starting_balance: "5000"
  )

  Account.create(
    user_id: 2,
    balance: "5000",
    starting_balance: "5000"
  )

### End Sample User and account ------------------------------------------------

### Sameple Bets ---------------------------------------------------------------

  Bet.create(
    user_id: 1,
    game_id: 1,
    wager: 1000,
    currency: "USD",
    odds: Game.first.one,
    betType: "Home win"
  )

  Bet.create(
    user_id: 1,
    game_id: 2,
    wager: 2000,
    currency: "USD",
    odds: Game.second.draw,
    betType: "Draw"
  )

  Bet.create(
    user_id: 1,
    game_id: 3,
    wager: 500,
    currency: "USD",
    odds: Game.third.two,
    betType: "Away win"
  )

  Bet.create(
    user_id: 2,
    game_id: 4,
    wager: 1000,
    currency: "USD",
    odds: Game.all[3].one,
    betType: "Home win"
  )

  Bet.create(
    user_id: 2,
    game_id: 5,
    wager: 200,
    currency: "USD",
    odds: Game.all[4].draw,
    betType: "Draw"
  )

  Bet.create(
    user_id: 2,
    game_id: 1,
    wager: 800,
    currency: "USD",
    odds: Game.first.oneDraw,
    betType: "Home Draw"
  )

  Bet.create(
    user_id: 2,
    game_id: 2,
    wager: 3000,
    currency: "USD",
    odds: Game.second.twoDraw,
    betType: "Away Draw"
  )

### End Sameple Bets -----------------------------------------------------------
