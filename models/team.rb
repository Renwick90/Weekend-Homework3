require( 'pg' )
require_relative('../db/sql_runner')

require('pry-byebug')
class Team 

  attr_reader( :id, :name )

  def initialize( options, runner )
    @id = options['id'].to_i
    @name = options['name']
    @runner = runner
  end

  def save()
    sql = "INSERT INTO teams (name) VALUES ('#{@name }') RETURNING *"
    db.exec(sql)
    db.close
   # team_data = @runner.run(sql)
   # @id = team_data.first['id'].to_i
  end

end