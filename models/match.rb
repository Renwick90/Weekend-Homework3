# require( 'pg' )
# require_relative('../db/sql_runner')
# require_relative('team')

# class Match
#   attr_reader( :id, :home_team_id, :away_team_id, :home_team_score, :away_team_score)

#   def initialize( options, runner )
#     @id = options['id'].to_i
#     @home_team_id = options['home_team_id'].to_i
#     @away_team_id = options['away_team_id'].to_i
#     @home_team_score = options['home_team_score'].to_i
#     @away_team_score = options['away_team_score'].to_i
#     @runner = runner
#   end

#   def save()
#     sql = "INSERT INTO matches (home_team_id, away_team_id, home_team_score, away_team_score) VALUES ('#{@home_team_id}', '#{@away_team_id}', '#{@home_team_score}', '#{@away_team_score}'); RETURNING *"
#    match_data = @runner.run(sql)
#    @id = match_data.first['id'].to_i
#   end
# end