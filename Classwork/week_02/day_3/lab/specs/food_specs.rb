require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

  def setup

    @food1 = Food.new("haggis", 10, 2)
    @food2 = Food.new("burger", 8, 3)
    @food3 = Food.new("greasy chips", 4, 5)

  end

  def test_name
    assert_equal("haggis" , @food1.name)
  end

  def test_price
    assert_equal(10 , @food1.price)
  end

  def test_rejuv
    assert_equal(2 , @food1.rejuv)
  end
end
