# require('pry')

class CaraokeBar
  attr_reader :name, :entryfee, :cashintill, :rooms, :peopleinbar, :drinks, :guestspending

  def initialize (name)
    @name = name
    @entryfee = 5
    @cashintill = 100
    @rooms = []
    @peopleinbar = []
    @drinks = []
    @guestspending = []


  end

#add rooms to bar
  def add_rooms_to_bar(rooms)
    @rooms = rooms
  end

  def count_rooms
    @rooms.count
  end

#add drinks to bar
  def add_drinks_to_bar(drinks)
    @drinks = drinks
  end

  def count_drink_types
    @drinks.count
  end

  def total_number_of_drinks
    total = 0
    @drinks.each_value {|number_of| total += number_of}
    return total
  end

  def total_value_of_drinks_stock
    total_value = 0
    for drink_hash in @drinks do
      for drink, number_of in drink_hash do
        total_value += (drink.cost * number_of)
      end
    end
    return total_value
  end

#add person to bar
  def add_guest_to_bar(guest)
     if guest.age >= 18 && guest.inebriation < 10 && guest.guestcash >= @entryfee
       @peopleinbar.push(guest)
       guest.pay_money(@entryfee)
       increase_till_by_entry_fee()
       @guestspending.push({guest => 0})
     end
  end

  def add_guest_group_to_bar(guestgroup)
    for guest in guestgroup do
      if guest.age >= 18 && guest.inebriation < 10 && guest.guestcash >= @entryfee
        @peopleinbar.push(guest)
        guest.pay_money(@entryfee)
        increase_till_by_entry_fee()
        @guestspending.push({guest => 0})
      end
    end
  end

  #increase cash in till
  def increase_till_by_entry_fee
    @cashintill += @entryfee
  end

  def increase_till_by_room_entry_fee(room)
    @cashintill += room.cost
  end

#add person to room
  def add_person_to_room(room, guest)
    if room.spare_capacity >= 1
      room.add_to_room(guest)
      @peopleinbar.delete(guest)
      guest.pay_money(room.cost)
      increase_till_by_room_entry_fee(room)
    end
  end

#add group to room
  def add_group_to_room(room, guestgroup)
    if room.spare_capacity >= guestgroup.count
      for guest in guestgroup do
        room.add_to_room(guest)
        @peopleinbar.delete(guest)
        guest.pay_money(room.cost)
        increase_till_by_room_entry_fee(room)
      end
    end
  end

#remove guest from room
  def remove_guest_from_room(room, guest)
    if room.peopleinroom.include?(guest)
      room.remove_guest(guest)
      @peopleinbar.push(guest)
    end
  end

  def remove_group_from_room(room)
    for guest in room.peopleinroom
      @peopleinbar.push(guest)
    end
    room.remove_all
  end
#remove guest from bar

  def remove_guest_from_bar(guest)
    @peopleinbar.delete(guest)
  end

  def find_guest(guest)
    @peopleinbar.include?(guest)
  end

#sell alcohol
  def sell_alcohol(guest, drink)
    if guest.guestcash >= drink.cost && guest.inebriation <= 10
      guest.pay_money(drink.cost)
      guest.consume_alcohol(drink)
      hash1 = @drinks.find{|hash| hash[drink]}
      hash1[drink] = hash1[drink] - 1
      hash2 = @guestspending.find{|hash| hash[guest]}
      hash2[guest] = hash2[guest] + drink.cost
      increase_till_by_drink_cost(drink)
    end
  end

  def increase_till_by_drink_cost(drink)
    @cashintill += drink.cost
  end

#


end
