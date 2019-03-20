require 'minitest/autorun'
require_relative '../models/checker'

class TestChecker < Minitest::Test

  def setup
    @game1 = Checker.new('rock','paper')
    @game2 = Checker.new('rock','rock')
    @game3 = Checker.new('scissors','paper')
  end

  def test_winner_1
    assert_equal 'Player 2', @game1.winner
  end

  def test_winner_2
    assert_equal 'Neither', @game2.winner
  end

  def test_winner_3
    assert_equal 'Player 1', @game3.winner
  end

  def test_check_1
    assert_equal 'Paper', @game1.check
  end

  def test_check_2
    assert_equal 'Neither', @game2.check
  end

  def test_check_3
    assert_equal 'Scissors', @game3.check
  end

end
