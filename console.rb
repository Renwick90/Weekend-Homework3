require_relative('./models/team')
require_relative('./models/match')
require_relative('./db/sql_runner')

require('pry-byebug')

runner = SqlRunner.new( {dbname: 'dodgeball', host: 'localhost'},)

team1 = Team.new({'name' => 'Raith Rovers',}, runner)

team2 = Team.new({'name' => 'Brechin City',}, runner)

team1.save()

team2.save()

binding.pry
nil




# match1 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team2.id, 'home_team_score' => '5', 'away_team_score' => '0',}, runner)


# match1.save()