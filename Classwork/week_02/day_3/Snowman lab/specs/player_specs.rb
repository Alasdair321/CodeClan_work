require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')

class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new("Wee Jonny")
  end

  def test_has_name
    skip
    assert_equal("Wee Jonny", @player.name)
  end

  def test_has_lives
    skip
    assert_equal(6, @player.lives)
  end

end
