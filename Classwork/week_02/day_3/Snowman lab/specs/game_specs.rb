require('minitest/autorun')
require('minitest/rg')
require_relative('../player.rb')
require_relative('../hiddenword.rb')
require_relative('../game.rb')

class TestGame < MiniTest::Test

  def setup
    @player = Player.new("Wee Jonny")
    @hiddenword = Hiddenword.new()
    @game = Game.new(@player.lives, @player.name, @hiddenword.mysteryword)
  end

  def test_has_mysteryword
    # skip
    assert_equal("spoon", @game.has_mysteryword)
  end

  def test_has_name
    skip
    assert_equal("Wee Jonny", @game.player_name)
  end

  def test_has_lives
    skip
    assert_equal(6, @game.player_lives)
  end

end
