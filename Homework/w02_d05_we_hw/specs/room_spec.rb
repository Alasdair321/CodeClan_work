require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../caraoke_bar.rb')
require_relative('../song.rb')
require_relative('../drink.rb')

class RoomTest < Minitest::Test

  def setup

    @bar = CaraokeBar.new("Heavy Metal Sing Song Bar")

    @room1 = Room.new("Small", 5)
    @bar.add_rooms_to_bar(@rooms)

    @guest1 = Guest.new("Liz", 21, 100, "Laid to Rest", 0, 9, 10)
    @guest2 = Guest.new("Adam", 21, 100, "Hourglass", 0, 7, 8)
    @guest3 = Guest.new("Wee Jonny", 21, 100, "Now You've Got Something to Die For", 0, 5, 6)
    @guest4 = Guest.new("Scott", 21, 100, "The Faded Line", 0, 3, 4)
    @guest5 = Guest.new("Gogz", 21, 100, "Omerta", 0, 1, 2)
    @guest6 = Guest.new("TEST", 21, 100, "???", 0, 1, 2) #not included in room - used for testing negative

    @guestgroup = [@guest1, @guest2, @guest3, @guest4, @guest5]

    @bar.add_guest_group_to_bar(@guestgroup)

    @bar.add_group_to_room(@room1, @guestgroup)

    @room1.add_singer(@guest2)

    @song1 = Song.new("Lamb of God", "Laid to Rest", 1)
    @song2 = Song.new("Lamb of God", "Hourglass", 2)
    @song3 = Song.new("Lamb of God", "Now You've Got Something to Die For", 3)
    @song4 = Song.new("Lamb of God", "The Faded Line", 4)
    @song5 = Song.new("Lamb of God", "Omerta", 5)
    @song6 = Song.new("Lamb of God", "Blood of The Scribe", 6)
    @song7 = Song.new("Lamb of God", "One Gun", 7)
    @song8 = Song.new("Lamb of God", "Break You", 8)
    @song9 = Song.new("Lamb of God", "What I've Become", 9)
    @song10 = Song.new("Lamb of God", "Ashes of the Wake", 10)
    @song11 = Song.new("Lamb of God", "Remorse Is for the Dead", 5)
    @song12 = Song.new("Justin Bieber", "What do you mean?", 2) #not included in library for testing purposes

    @songs = [@song1, @song2, @song3, @song4, @song5, @song6, @song7, @song8, @song9, @song10, @song11]

    @room1.add_songs_to_library(@songs)

    @drink1 = Drink.new("beer", 3, 1)
    @drink2 = Drink.new("cider", 4, 2)
    @drink3 = Drink.new("wine", 5, 3)
    @drinks = [{@drink1 => 200},
              {@drink2 => 150},
              {@drink3 => 100}]
    @bar.add_drinks_to_bar(@drinks)

    # def skip #uncomment to run all
    # end
  end

  def test_name
    skip
    assert_equal "Small", @room1.name
  end

  def test_cost
    skip
    assert_equal 10, @room1.cost
  end

  def test_capacity
    skip
    assert_equal 5, @room1.capacity
  end

  def test_people_in_room
    skip
    @room1.add_to_room(@guest4)
    assert_equal 6, @room1.peopleinroom.count
  end

  def test_add_songs_to_library
    skip
    @room1.add_songs_to_library(@songs)
    song1_title = @room1.songlibrary[0].title
    song2_title = @room1.songlibrary[1].title
    song11_title = @room1.songlibrary[10].title
    assert_equal 11, @room1.songlibrary.count
    assert_equal "Laid to Rest", song1_title
    assert_equal "Hourglass", song2_title
    assert_equal "Remorse Is for the Dead", song11_title
  end

  def test_add_song_to_playlist_in_library
    skip
    @room1.add_song_to_playlist(@song1)
    song1_title = @room1.songplaylist[0].title
    assert_equal "Laid to Rest", song1_title
  end

  def test_add_song_to_playlist_not_in_library
    skip
    @room1.add_song_to_playlist(@song12)
    assert_equal nil, @room1.songplaylist[0]
  end

  def test_add_multiple_songs_to_playlist
    skip
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)
    @room1.add_song_to_playlist(@song4)
    song1_title = @room1.songplaylist[0].title
    song2_title = @room1.songplaylist[1].title
    song3_title = @room1.songplaylist[2].title
    song4_title = @room1.songplaylist[3].title
    assert_equal "Laid to Rest", song1_title
    assert_equal "Hourglass", song2_title
    assert_equal "Now You've Got Something to Die For", song3_title
    assert_equal "The Faded Line", song4_title
  end

  def test_remove_songs_from_playlist
    skip
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)
    @room1.add_song_to_playlist(@song4)
    @room1.remove_song_from_playlist(@song2)
    song1_title = @room1.songplaylist[0].title
    song2_title = @room1.songplaylist[1].title
    song3_title = @room1.songplaylist[2].title
    song4_title = @room1.songplaylist[3]
    assert_equal "Laid to Rest", song1_title
    assert_equal nil, song4_title
    assert_equal "Now You've Got Something to Die For", song2_title
    assert_equal "The Faded Line", song3_title
  end

  def test_skip_song
    skip
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)
    @room1.add_song_to_playlist(@song4)
    @room1.skip_song
    song1_title = @room1.songplaylist[0].title
    song2_title = @room1.songplaylist[1].title
    song3_title = @room1.songplaylist[2].title
    song4_title = @room1.songplaylist[3]
    assert_equal nil, song4_title
    assert_equal "Hourglass", song1_title
    assert_equal "Now You've Got Something to Die For", song2_title
    assert_equal "The Faded Line", song3_title
  end

  def test_add_singer_Liz
    skip
    @room1.add_singer(@guest1)
    singer = @room1.singer.name
    assert_equal "Liz", singer
  end

  def test_add_singer_not_in_room
    skip
    assert_nil @room1.add_singer(@guest6)
  end

  def test_sing_someones_fav
    skip
    #setup singer added is @guest1 (Liz)
    @room1.add_song_to_playlist(@song2)
    assert_equal "MY NAME IS ADAM AND I LOVE THIS SONG!!", @room1.sing
  end

  def test_sing_not_fav
    skip
    #setup singer added is @guest1 (Liz)
    @room1.add_song_to_playlist(@song11)
    assert_nil @room1.sing
  end

  def test_sing_Liz_song1
    skip
    @room1.add_song_to_playlist(@song1)
    @room1.sing
    assert_nil @guest1.responsetosinging
    assert_equal "Wow! This person has talent!" ,@guest2.responsetosinging #jugementfactor = 8
    assert_equal "Wow! This person has talent!" ,@guest3.responsetosinging #judgementfactor = 6
    assert_equal "Not bad, good effort!" ,@guest4.responsetosinging #judgementfactor = 4
    assert_equal "Not bad, good effort!" ,@guest5.responsetosinging #judgementfactor = 2
  end

  def test_sing_Adam_song1_with_alcohol
    skip
    @room1.add_song_to_playlist(@song1) #song difficulty = 1
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 10, inebriation = 3
    @room1.sing
    assert_equal "I CAN'T STOP CRYING, THIS IS TOO GOOD!!!!!" ,@guest1.responsetosinging #judgementfactor = 10
    assert_nil @guest2.responsetosinging
    assert_equal "Wow! This person has talent!" ,@guest3.responsetosinging #judgementfactor = 6
    assert_equal "Not bad, good effort!" ,@guest4.responsetosinging #judgementfactor = 4
    assert_equal "Not bad, good effort!" ,@guest5.responsetosinging #judgementfactor = 2
    assert_equal 10, @guest2.singability
  end

  def test_sing_Adam_song5_with_alcohol
    skip
    @room1.add_song_to_playlist(@song5) #song difficulty = 5
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 10, inebriation = 4
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 6, inebriation = 6
    @room1.sing
    assert_equal "Not bad, good effort!" ,@guest1.responsetosinging #judgementfactor = 10
    assert_nil @guest2.responsetosinging
    assert_equal "Not bad, good effort!" ,@guest3.responsetosinging #judgementfactor = 6
    assert_equal "Not bad, good effort!" ,@guest4.responsetosinging #judgementfactor = 4
    assert_equal "Not bad, good effort!" ,@guest5.responsetosinging #judgementfactor = 2
    assert_equal 6, @guest2.singability
    assert_equal 6, @guest2.inebriation
  end

  def test_sing_Adam_song7_with_alcohol
    skip
    @room1.add_song_to_playlist(@song7) #song difficulty = 7
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 10, inebriation = 4
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 6, inebriation = 6
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 0, inebriation = 9
    @room1.sing
    assert_equal "Take the mic off them!" ,@guest1.responsetosinging #judgementfactor = 10
    assert_nil @guest2.responsetosinging
    assert_equal "Take the mic off them!" ,@guest3.responsetosinging #judgementfactor = 6
    assert_equal "Well done for trying..." ,@guest4.responsetosinging #judgementfactor = 4
    assert_equal "Well done for trying..." ,@guest5.responsetosinging #judgementfactor = 2
    assert_equal 6, @guest2.singability
    assert_equal 6, @guest2.inebriation
  end

  def test_sing_Adam_song10_with_alcohol
    skip
    @room1.add_song_to_playlist(@song10) #song difficulty = 10
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 10, inebriation = 4
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 6, inebriation = 6
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1)
    @bar.sell_alcohol(@guest2, @drink1) #singability now 0, inebriation = 9
    @room1.sing
    assert_equal "MY EARS!!!!! END MY LIFE TO SPARE ME THIS TORMENT!!!!" ,@guest1.responsetosinging #judgementfactor = 10
    assert_nil @guest2.responsetosinging
    assert_equal "Take the mic off them!" ,@guest3.responsetosinging #judgementfactor = 6
    assert_equal "Take the mic off them!" ,@guest4.responsetosinging #judgementfactor = 4
    assert_equal "Well done for trying..." ,@guest5.responsetosinging #judgementfactor = 2
    assert_equal 0, @guest2.singability
    assert_equal 9, @guest2.inebriation
  end

end
