require_relative('../db/sql_runner.rb')
require_relative('./performer.rb')

class Movie
  attr_accessor :title, :budget, :genre
  attr_reader :id

  def initialize(options)
    @title = options['title']
    @budget = options['budget'].to_i
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
  end

  def save
    sql = 'INSERT INTO movies (title, genre, budget) VALUES ($1, $2, $3) RETURNING *'
    values = [@title, @genre, @budget]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
  end

  def update
    sql = 'UPDATE movies SET title = $1, genre = $2, budget = $3 WHERE id = $4'
    values = [@title, @genre, @budget, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE FROM movies WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = 'DELETE FROM movies'
    SqlRunner.run(sql)
  end

  def performers
    sql = 'SELECT *
          FROM performers
          INNER JOIN castings
          ON performers.id = castings.performer_id
          WHERE castings.movie_id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map { |performer| Performer.new(performer) }
  end

  def budget_left
    sql = 'SELECT fee
          FROM castings
          WHERE movie_id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values).to_a
    return result.reduce(@budget){|sum, fee_hash| sum -= fee_hash['fee'].to_i}
  end
end
