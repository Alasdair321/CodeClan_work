class Band
  attr_reader :name

  def initialize(name, members)
    @name = name
    @members = members
  end

  def perform(song_title)
    performance = []
    for member in @members
      performance << member.play_instrument(song_title)
    end
    return performance 
  end

end
