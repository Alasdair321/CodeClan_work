class Song
  attr_reader :artist, :title, :singdifficulty

  def initialize(artist, title, singdifficulty)
    @artist = artist
    @title = title
    @singdifficulty = singdifficulty
  end

end
