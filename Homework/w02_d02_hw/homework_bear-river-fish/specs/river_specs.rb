require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("John")
    @fish2 = Fish.new("James")
    @fish3 = Fish.new("Juan")
    @fish4 = Fish.new("Jake")
    @fishes = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Thames", @fishes)
  end

  def test_has_name
    assert_equal("Thames",@river.name)
  end

  def test_has_fish
    fish_number = @river.fish_number
    assert_equal(4, fish_number)
  end

  def test_lose_fish
    answer = @river.lose_fish(@fish1)
    assert_equal(3, @river.fish_number)
    assert_equal(@fish1, answer)
  end

  def test_exist_false
    skip
    assert_equal(nil, @river.exist(@fish5) )
  end

  def test_exist_true
    skip
    assert_equal(@fish3, @river.exist(@fish3) )
  end

end
