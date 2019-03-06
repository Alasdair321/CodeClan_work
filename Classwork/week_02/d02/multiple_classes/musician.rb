class Musician
  attr_reader :name

  def initialize(name, instrument)
    @name = name
    @instrument = instrument
  end

  def play_instrument(song_title)
    return @instrument.play_song(song_title)
  end

end
