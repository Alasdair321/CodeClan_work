require_relative('models/pizza_order.rb')
require('pry-byebug')

order1 = PizzaOrder.new({
  'first_name' => 'Pim',
  'last_name' => 'Smith',
  'quantity' => '5',
  'topping' => 'meat feast'
  })

order2 = PizzaOrder.new({
  'first_name' => 'Jonny',
  'last_name' => 'Bravo',
  'quantity' => '1',
  'topping' => 'Vegano'
  })

PizzaOrder.delete_all

order1.save
order2.save

all_orders = PizzaOrder.all
p all_orders

order1.first_name = "Vader"
order1.update

all_orders = PizzaOrder.all
p all_orders

# binding.pry
# nil
