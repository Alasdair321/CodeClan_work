require("minitest/autorun")
require('minitest/rg')
require_relative("../instrument")

class InstrumentTest < MiniTest::Test
  def setup
    @instrument = Instrument.new("guitar")
  end

  def test_has_type
    assert_equal("guitar", @instrument.type)
  end

  def test_instrument_can_play_song
    assert_equal("I'm playing Hey Joe!", @instrument.play_song("Hey Joe"))
  end

end
