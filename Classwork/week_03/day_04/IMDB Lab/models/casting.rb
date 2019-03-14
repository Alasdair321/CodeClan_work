require_relative('../db/sql_runner.rb')

class Casting
  attr_accessor :fee
  attr_reader :id, :movie_id, :performer_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @movie_id = options['movie_id'].to_i
    @performer_id = options['performer_id'].to_i
    @fee = options['fee'].to_i
  end

  def save
    sql = 'INSERT INTO castings (movie_id, performer_id, fee) VALUES ($1, $2, $3) RETURNING *'
    values = [@movie_id, @performer_id, @fee]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
  end

  def update
    sql = 'UPDATE castings SET movie_id = $1, performer_id = $2, fee = $3 WHERE id = $4'
    values = [@movie_id, @performer_id, @fee, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE FROM castings WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = 'DELETE FROM castings'
    SqlRunner.run(sql)
  end

end
