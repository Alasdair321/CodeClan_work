require("minitest/autorun")
require('minitest/rg')
require_relative("../musician")
require_relative("../instrument")


class MusicianTest < MiniTest::Test

  def setup
    @instrument1 = Instrument.new("guitar")
    @musician1 = Musician.new("Jimi Hendrix", @instrument1)
  end

  def test_musician_has_name
    assert_equal("Jimi Hendrix", @musician1.name)
  end

  def test_musician_can_play_song
    assert_equal("I'm playing Hey Joe!", @musician1.play_instrument("Hey Joe"))
  end

end
