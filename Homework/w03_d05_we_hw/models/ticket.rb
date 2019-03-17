require_relative('../db/sql_runner.rb')

class Ticket
  attr_reader :id
  attr_accessor :customer_id, :film_id, :screening_id

  def initialize(options)
    @customer_id = options['customer_id']
    @film_id = options['film_id']
    @screening_id = options['screening_id']
    @id = options['id'] if options['id']
  end
#-------------------------------------------------------------------------------
#CRUD
  def save
    sql = 'INSERT INTO tickets (customer_id, film_id, screening_id) VALUES ($1, $2, $3) RETURNING *'
    values = [@customer_id, @film_id, @screening_id]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
    sql2 = 'UPDATE customers SET funds =
          (SELECT funds FROM customers WHERE id = $2)
          -
          (SELECT price FROM films WHERE id = $1)
          WHERE id = $2'
    values2 = [@film_id, @customer_id]
    SqlRunner.run(sql2, values2)
    sql3 = 'UPDATE screenings SET tickets_sold =
          (SELECT tickets_sold FROM screenings WHERE id = $1)
          +
          (1)
          WHERE id = $1'
    values3 = [@screening_id]
    SqlRunner.run(sql3, values3)
    sql3 = 'UPDATE screenings SET tickets_unsold =
          (SELECT tickets_unsold FROM screenings WHERE id = $1)
          -
          (1)
          WHERE id = $1'
    values3 = [@screening_id]
    SqlRunner.run(sql3, values3)
  end

  def update
    sql = 'UPDATE tickets SET customer_id = $1, film_id = $2 WHERE id = $3'
    values = [@customer_id, @film_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE FROM tickets WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = 'DELETE FROM tickets'
    SqlRunner.run(sql)
  end
#-------------------------------------------------------------------------------
#FUNCTIONS

end
