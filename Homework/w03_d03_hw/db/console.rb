require_relative('../models/album.rb')
require_relative('../models/artist.rb')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name'=>'Ludovico Einaudi'})
artist1.save

artist2 = Artist.new({'name'=>'Metallica'})
artist2.save

album1 = Album.new({'title'=>'Nightbook','genre'=>'Piano','artist_id'=>artist1.id})
album1.save

album2 = Album.new({'title'=>'Divenire','genre'=>'Piano','artist_id'=>artist1.id})
album2.save

album3 = Album.new({'title'=>'Ride The Lightning','genre'=>'Heavy Metal','artist_id'=>artist2.id})
album3.save

album4 = Album.new({'title'=>'Master Of Puppets','genre'=>'Heavy Metal','artist_id'=>artist2.id})
album4.save

p artist1.albums
p artist2.albums
p album1.artist
p album4.artist
