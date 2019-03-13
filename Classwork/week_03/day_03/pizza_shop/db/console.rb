require("pry")
require_relative("../models/pizza_order")
require_relative('../models/customer')

PizzaOrder.delete_all
Customer.delete_all

customer1 = Customer.new({'name' => 'Switch Badman'})
customer1.save

pizza_order1 = PizzaOrder.new({
  'topping' => 'Pepperoni',
  'quantity' => 1,
  'customer_id' => customer1.id
  })
pizza_order1.save

binding.pry
nil
