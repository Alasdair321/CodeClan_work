require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../food.rb')

class CustomerTest < MiniTest::Test

  def setup
    @customer1 = Customer.new("Tweeker Joe", 20, 19, 1)
    @customer2 = Customer.new("Wee Jonny", 20, 10, 0)
    @customer3 = Customer.new("Big Chris", 500, 30, 8)
    @customer4 = Customer.new("Larry the alchy", 100, 40, 12)

    @drink1 = Drink.new("Piss Water", 10, 1)
    @drink2 = Drink.new("Piss Water Light", 8, 2)
    @drink3 = Drink.new("Piss Water Dark", 12, 3)
    @drink4 = Drink.new("Piss Water Cloudy", 14, 4)
    @drink5 = Drink.new("Piss Water Fizzy", 16, 5)

    @drinks = [@drink1, @drink2, @drink3, @drink4, @drink5]
    @pub = Pub.new(100, "Leith Typical")
    @pub.add_drinks_to_stock(@drinks)

    @food1 = Food.new("haggis", 10, 2)
    @food2 = Food.new("burger", 8, 3)
    @food3 = Food.new("greasy chips", 4, 5)

    @foods = [@food1, @food2 ,@food3]
    @pub.add_food_to_stock(@foods)


  end

  def test_has_name
    assert_equal("Tweeker Joe", @customer1.has_name)
  end

  def test_has_wallet
    assert_equal(20, @customer1.has_wallet)
  end

  def test_add_foods_to_stock
    assert_equal(3 ,@foods.count)
  end

  def test_add_drinks_to_stock
    assert_equal(5 ,@drinks.count)
  end

  def test_can_take_drink_positive
    @customer1.can_take_drink(@pub, @drink3)
    assert_equal(true, @pub.age_check(@customer1.age))
    assert_equal(1,@customer1.drink_count)
    assert_equal(4,@pub.number_of_drinks)
    assert_equal(8, @customer1.has_wallet)
    assert_equal(112, @pub.has_till)
    assert_equal(4, @customer1.drunkeness)
  end

  def test_can_take_drink_negative_age
    @customer2.can_take_drink(@pub, @drink3)
    assert_equal(false, @pub.age_check(@customer2.age))
    assert_equal(0,@customer2.drink_count)
    assert_equal(5,@pub.number_of_drinks)
    assert_equal(20, @customer2.has_wallet)
    assert_equal(100, @pub.has_till)
  end

  def test_can_take_drink_negative_drunk
    @customer4.can_take_drink(@pub, @drink3)
    assert_equal(true, @pub.age_check(@customer4.age))
    assert_equal(0,@customer4.drink_count)
    assert_equal(5,@pub.number_of_drinks)
    assert_equal(100, @customer4.has_wallet)
    assert_equal(100, @pub.has_till)
    assert_equal(12, @customer4.drunkeness)
  end

  def test_can_increase_drunkeness
    @customer4.drink_a_drink(@drink3)
    assert_equal(15 , @customer4.drunkeness)
  end

  def test_buy_eat_food
    #customer 3 , food2
    @customer3.eat_food(@pub, @food2)
    assert_equal(492 ,@customer3.has_wallet) #money changes in wallet
    assert_equal(5, @customer3.drunkeness)#drunkeness goes down
    assert_equal(108, @pub.has_till)#pub till goes up
    assert_equal(2, @pub.number_of_food)#food now not in pub stock
  end

end
