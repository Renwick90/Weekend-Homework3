require_relative('./models/team')
require_relative('./models/match')
require_relative('./db/sql_runner')

require('pry-byebug')

runner = SqlRunner.new( {dbname: 'dodgeball', host: 'localhost'},)

# Team.delete_all(runner)

team1 = Team.new({'name' => 'Raith Rovers'}, runner)
t1 = team1.save()
team2 = Team.new({'name' => 'Brechin City'}, runner)
t2 = team2.save()


match1 = Match.new({'home_team_id' => t1.id, 'away_team_id' => t2.id, 'home_team_score' => '5', 'away_team_score' => '0',}, runner)


match1.save()

binding.pry
nil