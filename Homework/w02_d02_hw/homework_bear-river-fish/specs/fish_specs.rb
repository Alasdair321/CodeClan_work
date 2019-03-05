require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("John")
  end

  def test_has_name
    assert_equal("John",@fish.name)
  end
end
