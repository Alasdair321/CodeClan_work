require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

  def setup

    @bear = Bear.new("Black","Alfy")
    @fish1 = Fish.new("John")
    @fish2 = Fish.new("James")
    @fish3 = Fish.new("Juan")
    @fish4 = Fish.new("Jake")
    @fishes = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Thames", @fishes)

  end

  def test_has_name
    assert_equal("Alfy", @bear.name)
  end

  def test_has_type
    assert_equal("Black",@bear.type)
  end

  def test_eat_fish_exist
    @bear.eat_fish(@river.exist(@fish2))
    fish_in_bear = @bear.stomach.length
    @river.lose_fish(@fish2)
    assert_equal(1,fish_in_bear)
    assert_equal(3, @river.fish_number)
  end

  def test_eat_fish_not_exist
    @bear.eat_fish(@river.exist(@fish5))
    fish_in_bear = @bear.stomach.length
    @river.lose_fish(@fish5)
    assert_equal(0,fish_in_bear)
    assert_equal(4, @river.fish_number)
  end

  def test_speak_when_eaten_fish
    @bear.eat_fish(@fish2)
    assert_equal("DAMNED TASTEY",@bear.speak_when_eaten_fish)
  end

  def test_speak_when_need_fish
    assert_equal("GEEZ SOME FISH YA BAWBAG",@bear.speak_when_eaten_fish)
  end

  def test_how_much_in_bear_2
    @bear.eat_fish(@fish2)
    @bear.eat_fish(@fish3)
    assert_equal(2, @bear.stomach.length)
  end

  def test_how_much_in_bear_1
    @bear.eat_fish(@fish3)
    assert_equal(1, @bear.stomach.length)
  end

end
