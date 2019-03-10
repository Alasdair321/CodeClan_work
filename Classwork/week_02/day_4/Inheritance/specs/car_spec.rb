require('minitest/autorun')
require('minitest/rg')
require_relative('../car')

class TestCar < Minitest::Test
  def setup
    @car = Car.new(4)
  end

  def test_car_can_start_engine
    assert_equal("Vrrmmm", @car.start_engine)
  end

  def test_vehicle_has_number_of_wheels
    assert_equal(4, @car.number_of_wheels)
  end
end
