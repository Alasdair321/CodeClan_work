require_relative('../db/sql_runner.rb')
require_relative('./pizza_order.rb')

class Customer

  attr_reader(:id)
  attr_accessor(:name)

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def pizza_orders
    sql = 'SELECT * FROM pizza_orders WHERE customer_id = $1'
    values = [@id]
    pizza_order_hashes = SqlRunner.run(sql, values)
    return pizza_order_hashes.map{|pizza_order| PizzaOrder.new(pizza_order)}
  end

  def save()
    sql = "INSERT INTO customers
    (
    name
    )
    VALUES
    (
    $1
    )
    RETURNING *"
    values = [@name]
    @id = SqlRunner.run(sql, values).first['id'].to_i
  end

  def update()
    sql = "UPDATE customers
    SET
    (
      name
    ) =
    (
      $1
    )
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM customers
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.find(id)
    sql = "SELECT * FROM customers
    WHERE id = $1"
    values = [id]
    customer_hash = SqlRunner.run(sql, values).first
    customer = Customer.new(customer_hash)
    return customer
  end

  def self.all()
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run(sql)
    return customers.map { |customer| Customer.new(customer) }
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end


end
