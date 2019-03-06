require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')

class DrinkTest < MiniTest::Test

  @drink = Drink.new("Piss Water", 10)

  def test_has_name
    assert_equal("Piss Water", @drink.has_name)
  end

  def test_has_price
    assert_equal(10, @drink.has_price)
  end

end
