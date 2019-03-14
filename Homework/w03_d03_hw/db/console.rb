require_relative('../models/album.rb')
require_relative('../models/artist.rb')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name'=>'Ludovico Einaudi'})
artist1.save

artist2 = Artist.new({'name'=>'Metallica'})
artist2.save
artist2.name = 'Generic Pop Band'
# p artist2
# artist2.update
# p artist2



album1 = Album.new({'title'=>'Nightbook','genre'=>'Piano','artist_id'=>artist1.id})
album1.save
p album1
album1.title = 'Different title'
p album1
album1.update

album2 = Album.new({'title'=>'Divenire','genre'=>'Piano','artist_id'=>artist1.id})
album2.save

album3 = Album.new({'title'=>'Ride The Lightning','genre'=>'Heavy Metal','artist_id'=>artist2.id})
album3.save

album4 = Album.new({'title'=>'Master Of Puppets','genre'=>'Heavy Metal','artist_id'=>artist2.id})
album4.save

# p artist2.albums
# p album1.artist
# p album4.artist

# artist1.delete

# p Album.find(78)
