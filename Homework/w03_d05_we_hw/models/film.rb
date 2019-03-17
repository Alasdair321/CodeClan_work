require_relative('../db/sql_runner.rb')
require_relative('./customer.rb')

class Film
  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @title = options['title']
    @price = options['price']
    @id = options['id'] if options['id']
  end
#-------------------------------------------------------------------------------
#CRUD
  def save
    sql = 'INSERT INTO films (title, price) VALUES ($1, $2) RETURNING *'
    values = [@title, @price]
    result = SqlRunner.run(sql, values).first
    @id = result['id'].to_i
  end

  def update
    sql = 'UPDATE films SET title = $1, price = $2 WHERE id = $3'
    values = [@title, @price, @id]
    SqlRunner.run(sql, values)
  end

  def delete
    sql = 'DELETE FROM films WHERE id = $1'
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = 'DELETE FROM films'
    SqlRunner.run(sql)
  end
#-------------------------------------------------------------------------------
#FUNCTIONS
  def customers
    sql = 'SELECT * FROM customers INNER JOIN tickets ON customers.id = tickets.customer_id WHERE tickets.film_id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    array = result.map { |hash| Customer.new(hash) }
    return array
  end

  def tickets
    sql = 'SELECT *
          FROM tickets
          INNER JOIN films
          ON films.id = tickets.film_id
          WHERE films.id = $1'
    values = [@id]
    result = SqlRunner.run(sql, values)
    array = result.map { |hash| Film.new(hash) }
    return array.count
  end


end
