require('pry')
require_relative('./models/movie')
require_relative('./models/performer')
require_relative('./models/casting')

Movie.delete_all
Performer.delete_all

movie1 = Movie.new({
  'title' => 'Predator',
  'genre' => 'action',
  'budget' => 18000000
  })
movie1.save

movie2 = Movie.new({
  'title' => 'Terminator 3 - Rise of the Machines',
  'genre' => 'action',
  'budget' => 187300000
  })
movie2.save

performer1 = Performer.new({
  'first_name' => 'Arnold',
  'last_name' => 'Schwartzenegger'
  })
performer1.save

performer2 = Performer.new({
  'first_name' => 'Carl',
  'last_name' => 'Weathers'
  })
performer2.save

performer3 = Performer.new({
  'first_name' => 'Jesse',
  'last_name' => 'Ventura'
  })
performer3.save

performer4 = Performer.new({
  'first_name' => 'Kristanna',
  'last_name' => 'Loken'
  })
performer4.save

casting1 = Casting.new({
  'movie_id' => movie1.id,
  'performer_id' => performer1.id,
  'fee' => 3500000
  })
casting1.save

casting2 = Casting.new({
  'movie_id' => movie1.id,
  'performer_id' => performer2.id,
  'fee' => 500000
  })
casting2.save

casting3 = Casting.new({
  'movie_id' => movie1.id,
  'performer_id' => performer3.id,
  'fee' => 250000
  })
casting3.save

casting4 = Casting.new({
  'movie_id' => movie2.id,
  'performer_id' => performer1.id,
  'fee' => 30000000
  })
casting4.save

casting5 = Casting.new({
  'movie_id' => movie2.id,
  'performer_id' => performer4.id,
  'fee' => 1500000
  })
casting5.save

p movie1.performers

# performer3.first_name = 'Elpidia'
# performer3.last_name = 'Carrillo'
# performer3.update

# performer2.delete




# movie1.delete

# movie1.title = 'Predators'
# movie1.genre = 'Romantic Comedy'
# movie1.budget = 20000
# movie1.update




binding.pry
nil
