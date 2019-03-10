require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')
require_relative('../drink.rb')
require_relative('../song.rb')

class GuestTest < Minitest::Test

  def setup

    @guest3 = Guest.new("Wee Jonny", 21, 100, "Now You've Got Something to Die For", 0, 5, 6)
    @guest1 = Guest.new("Liz", 21, 100, "Laid to Rest", 0, 9, 10)

    @song4 = Song.new("Lamb of God", "The Faded Line", 4)

    @drink1 = Drink.new("beer", 3, 1)

    # def skip #uncomment to run all
    # end

  end

  def test_pay_money
    skip
    @guest3.pay_money(10)
    assert_equal 90, @guest3.guestcash
  end

  def test_consume_alcohol
    skip
    @guest3.consume_alcohol(@drink1)
    assert_equal 1, @guest3.inebriation
    assert_equal 6, @guest3.singability
  end

  def test_consume_alcohol_4_times
    skip
    @guest3.consume_alcohol(@drink1)
    @guest3.consume_alcohol(@drink1)
    @guest3.consume_alcohol(@drink1)
    @guest3.consume_alcohol(@drink1)
    assert_equal 4, @guest3.inebriation
    assert_equal 9, @guest3.singability #peak singing ability as inebriation is going to exceed 4 after this point
  end

  def test_consume_alcohol_5_times
    skip
    @guest3.consume_alcohol(@drink1)
    @guest3.consume_alcohol(@drink1)
    @guest3.consume_alcohol(@drink1)
    @guest3.consume_alcohol(@drink1)
    @guest3.consume_alcohol(@drink1)
    assert_equal 5, @guest3.inebriation
    assert_equal 7, @guest3.singability
  end

  def test_consume_alcohol_4_times_Liz #singability starts at 9
    skip
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    assert_equal 4, @guest1.inebriation
    assert_equal 10, @guest1.singability #cannot go above 10
  end

  def test_consume_alcohol_9_times_Liz #singability starts at 9
    skip
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    @guest1.consume_alcohol(@drink1)
    assert_equal 9, @guest1.inebriation
    assert_equal 0, @guest1.singability
  end

end
