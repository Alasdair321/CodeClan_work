class Instrument
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def play_song(song_title)
    return "I'm playing #{song_title}!"
  end

end
