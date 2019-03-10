require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')

class PubTest < MiniTest::Test

  def setup
    @pub = Pub.new(100, "Free Drinks")
    @drink1 = Drink.new("Piss Water", 10, 1)
    @drink2 = Drink.new("Piss Water Light", 8, 2)
    @drink3 = Drink.new("Piss Water Dark", 12, 3)
    @drink4 = Drink.new("Piss Water Cloudy", 14, 4)
    @drink5 = Drink.new("Piss Water Fizzy", 16, 5)
    @customer = Customer.new("Tweeker Joe", 20, 19, 1)

    @drinks = [@drink1, @drink2, @drink3, @drink4, @drink5]
    @stock = @pub.add_drinks_to_stock(@drinks)

  end

  def test_has_name
    assert_equal("Free Drinks", @pub.has_name)
  end

  def test_has_drinks
    assert_equal(@stock, @pub.has_drinks)
  end

  def test_has_till
    assert_equal(100, @pub.has_till)
  end

  def test_add_drinks_to_stock
    assert_equal(5 , @drinks.count)
  end

  def test_add_money_till
    assert_equal(112, @pub.add_money_till(@drink3))
  end

  def test_age_check
    assert_equal(true, @pub.age_check(@customer.age))
  end




end
