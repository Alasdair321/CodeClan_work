require('PG')

class PizzaOrder
  attr_accessor :first_name, :last_name, :quantity, :topping
  attr_reader :id


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options['last_name']
    @quantity = options['quantity'].to_i
    @topping = options['topping']
  end

  def save
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "INSERT INTO pizza_orders (
          first_name, last_name, quantity, topping
          ) VALUES (
          $1, $2, $3, $4
          ) RETURNING *;"
    values = [@first_name, @last_name, @quantity, @topping]
    db.prepare('save', sql)
    arr_of_hashes = db.exec_prepared('save', values )
    @id = arr_of_hashes[0]['id']
    db.close()
  end

  def PizzaOrder.all
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "SELECT * FROM pizza_orders;"
    db.prepare('all', sql)
    orders_hashes = db.exec_prepared('all')
    db.close()
    return orders_hashes.map { |hash| PizzaOrder.new( hash )}
  end

  def PizzaOrder.delete_all
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "DELETE FROM pizza_orders;"
    db.prepare('banana', sql)
    db.exec_prepared('banana')
    db.close
  end

  def delete
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "DELETE FROM pizza_orders WHERE id = $1;"
    values = [@id]
    db.prepare('banana', sql)
    db.exec_prepared('banana', values)
    db.close
  end

  def update
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "UPDATE pizza_orders SET (first_name, last_name, quantity, topping) = ($1, $2, $3, $4) WHERE id = $5;"
    values = [@first_name, @last_name, @quantity, @topping, @id]
    db.prepare('save', sql)
    db.exec_prepared('save', values)
    db.close
  end


end
