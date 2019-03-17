require_relative('../db/sql_runner.rb')

class Screening
  attr_reader :id
  attr_accessor :film_id, :showing_time,
                :screen_capacity, :tickets_sold, :tickets_unsold

  def initialize(options)
    @film_id = options['film_id']
    @showing_time = options['showing_time']
    @screen_capacity = options['screen_capacity']
    @tickets_sold = options['tickets_sold']
    @tickets_unsold = options['tickets_unsold']
    @id = options['id'] if options['id']
  end
#-------------------------------------------------------------------------------
#CRUD
  def save
    sql = 'INSERT INTO screenings (film_id, showing_time, screen_capacity, tickets_sold, tickets_unsold) VALUES ($1, $2, $3, $4, $5) RETURNING *'
    values = [@film_id, @showing_time, @screen_capacity, @tickets_sold, @tickets_unsold]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
    sql2 = 'UPDATE screenings SET tickets_unsold =
          (SELECT screen_capacity FROM screenings WHERE id = $1)
          WHERE id = $1'
    values2 = [@id]
    SqlRunner.run(sql2, values2)
  end

  def update
    sql = 'UPDATE screenings SET film_id = $1, showing_time = $2, screen_capacity = $3, tickets_sold = $4, tickets_unsold = $5 WHERE id = $6'
    values = [@film_id, @showing_time, @screen_capacity, @tickets_sold, @tickets_unsold, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE FROM screenings WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = 'DELETE FROM screenings'
    SqlRunner.run(sql)
  end
#-------------------------------------------------------------------------------
end
