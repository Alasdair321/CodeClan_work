class Room
  attr_reader :name, :cost, :capacity, :peopleinroom, :songlibrary, :songplaylist, :singer

  def initialize (name, capacity)
    @name = name
    @cost = 10
    @capacity = capacity
    @peopleinroom = []
    @songlibrary = []
    @songplaylist = []
    @singer = nil
  end

#add songs to library
  def add_songs_to_library(songs)
    songs.each { |song| @songlibrary.push(song)}
  end

#check capacity
  def spare_capacity
    @capacity - @peopleinroom.count
  end

  #increase people in room

  def add_to_room(guest)
    @peopleinroom.push(guest)
  end

#decrease people in room
  def remove_guest(guest)
    @peopleinroom.delete(guest)
  end

  def remove_all
    people_leaving = @peopleinroom
    @peopleinroom = []
    return people_leaving
  end

#add songs to playlist
  def add_song_to_playlist(song)
    @songplaylist.push(@songlibrary.find {|obj| obj == song})
  end

#remove songs from playlist
  def remove_song_from_playlist(song)
    @songplaylist.delete(song)
  end

#skip song in playlist
  def skip_song
    @songplaylist.shift
  end

#add singer from people in room
  def add_singer(guest)
    @singer = @peopleinroom.find{|singer| singer == guest}
  end

#commence singing
  def sing
    for guest in @peopleinroom
      if guest != @singer
        guest.singingresponse(@singer, @songplaylist[0])
      end
    end
    for guest in @peopleinroom
      if @songplaylist[0].title == guest.favsongtitle
        guest.favsongresponse
      else
        nil
      end
    end
    @singer = nil
    skipsong
  end


end
