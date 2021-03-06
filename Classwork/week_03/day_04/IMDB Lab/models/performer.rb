require_relative('../db/sql_runner.rb')
require_relative('./movie.rb')

class Performer
  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
  end

  def save
    sql = 'INSERT INTO performers (first_name, last_name) VALUES ($1, $2) RETURNING *'
    values = [@first_name, @last_name]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
  end

  def update
    sql = 'UPDATE performers SET first_name = $1, last_name = $2 WHERE id = $3'
    values = [@first_name, @last_name, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE FROM performers WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = 'DELETE FROM performers'
    SqlRunner.run(sql)
  end

  def movies
    sql = 'SELECT *
          FROM movies
          INNER JOIN castings
          ON movies.id = castings.movie_id
          WHERE castings.performer_id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map { |movie| Movie.new(movie) }
  end
end
