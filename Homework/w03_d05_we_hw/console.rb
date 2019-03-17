require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/screening.rb')
require_relative('./models/ticket.rb')
require('pry')
#-------------------------------------------------------------------------------
#DELETIONS
Customer.delete_all
Film.delete_all
Ticket.delete_all
Screening.delete_all
#-------------------------------------------------------------------------------
#CUSTOMERS
customer1 = Customer.new({
  'name' => 'Switch Badman',
  'funds' => 300,
  })
customer1.save
customer2 = Customer.new({
  'name' => 'Jonny Bravo',
  'funds' => 250,
  })
customer2.save
customer3 = Customer.new({
  'name' => 'Vegeta Prince of all Saiyans',
  'funds' => 200,
  })
customer3.save
customer4 = Customer.new({
  'name' => 'Optimus Prime',
  'funds' => 150,
  })
customer4.save
customer5 = Customer.new({
  'name' => 'William Wallace',
  'funds' => 100,
  })
customer5.save
customer6 = Customer.new({
  'name' => 'Thor',
  'funds' => 50,
  })
customer6.save
#-------------------------------------------------------------------------------
#FILMS
film1 = Film.new({
  'title' => 'The Room',
  'price' => 10
  })
film1.save
film2 = Film.new({
  'title' => 'Predator',
  'price' => 15
  })
film2.save
film3 = Film.new({
  'title' => 'Snow White and the Seven Dwarves',
  'price' => 20
  })
film3.save
#-------------------------------------------------------------------------------
#SCREENINGS
screening1 = Screening.new({
  'film_id' => film1.id,
  'showing_time' => '18:00:00',
  'screen_capacity' => 20,
  'tickets_sold' => 0
  })
screening1.save
screening2 = Screening.new({
  'film_id' => film1.id,
  'showing_time' => '20:00:00',
  'screen_capacity' => 15,
  'tickets_sold' => 0
  })
screening2.save
screening3 = Screening.new({
  'film_id' => film2.id,
  'showing_time' => '19:00:00',
  'screen_capacity' => 10,
  'tickets_sold' => 0
  })
screening3.save
screening4 = Screening.new({
  'film_id' => film2.id,
  'showing_time' => '21:00:00',
  'screen_capacity' => 5,
  'tickets_sold' => 0
  })
screening4.save
screening5 = Screening.new({
  'film_id' => film3.id,
  'showing_time' => '17:30:00',
  'screen_capacity' => 5,
  'tickets_sold' => 0
  })
screening5.save
screening6 = Screening.new({
  'film_id' => film3.id,
  'showing_time' => '19:30:00',
  'screen_capacity' => 5,
  'tickets_sold' => 0
  })
screening6.save
#-------------------------------------------------------------------------------
#TICKETS
ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id,
  'screening_id' => screening1.id
  })
ticket1.save
ticket2 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film1.id,
  'screening_id' => screening1.id
  })
ticket2.save
ticket3 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film1.id,
  'screening_id' => screening1.id
  })
ticket3.save
ticket4 = Ticket.new({
  'customer_id' => customer4.id,
  'film_id' => film1.id,
  'screening_id' => screening1.id
  })
ticket4.save
ticket5 = Ticket.new({
  'customer_id' => customer5.id,
  'film_id' => film1.id,
  'screening_id' => screening2.id
  })
ticket5.save
ticket6 = Ticket.new({
  'customer_id' => customer6.id,
  'film_id' => film1.id,
  'screening_id' => screening2.id
  })
ticket6.save
ticket7 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film2.id,
  'screening_id' => screening3.id
  })
ticket7.save
ticket8 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film2.id,
  'screening_id' => screening3.id
  })
ticket8.save
ticket9 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film2.id,
  'screening_id' => screening4.id
  })
ticket9.save
ticket10 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film3.id,
  'screening_id' => screening5.id
  })
ticket10.save
ticket11 = Ticket.new({
  'customer_id' => customer4.id,
  'film_id' => film3.id,
  'screening_id' => screening6.id
  })
ticket11.save
#-------------------------------------------------------------------------------
#FUNCTIONS
customer1.films #verified
film1.customers #verified
customer1.tickets #verified
film1.tickets #verified

binding.pry
nil
