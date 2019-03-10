require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword.rb')

class TestHiddenword < MiniTest::Test

  def setup
    @hiddenword = Hiddenword.new()
  end

  def test_has_hidden_word
    skip
    assert_equal(true, @hiddenword.has_hidden_word)
  end

  def test_hidden_word_is? #needs to be run a few times potentially... (does work as expected)
    skip
    assert_equal("actor", @hiddenword.mysteryword)
  end

  def test_letter_in_word_guess #needs to run a few times to work... (does work as expected)
    skip
    assert_equal(true, @hiddenword.letter_in_word_guess("e"))
  end

end
