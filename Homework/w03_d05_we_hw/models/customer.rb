require_relative('../db/sql_runner.rb')
require_relative('./film.rb')

class Customer
  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @name = options['name']
    @funds = options['funds']
    @id = options['id'] if options['id']
  end
#-------------------------------------------------------------------------------
#CRUD
  def save
    sql = 'INSERT INTO customers (name, funds) VALUES ($1, $2) RETURNING *'
    values = [@name, @funds]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
  end

  def update
    sql = 'UPDATE customers SET name = $1, funds = $2 WHERE id = $3'
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE FROM customers WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = 'DELETE FROM customers'
    SqlRunner.run(sql)
  end
#-------------------------------------------------------------------------------
#FUNCTIONS
  def films
    sql = 'SELECT * FROM films INNER JOIN tickets ON films.id = tickets.film_id WHERE tickets.customer_id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    array = result.map { |hash| Film.new(hash) }
    return array
  end

  def tickets
    sql = 'SELECT *
          FROM tickets
          INNER JOIN customers
          ON customers.id = tickets.customer_id
          WHERE customers.id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    array = result.map { |hash| Customer.new(hash) }
    return array.count
  end
end
