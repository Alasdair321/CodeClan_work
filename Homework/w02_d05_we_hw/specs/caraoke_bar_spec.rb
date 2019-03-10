require('minitest/autorun')
require('minitest/rg')
require_relative('../caraoke_bar.rb')
require_relative('../room.rb')
require_relative('../drink.rb')
require_relative('../guest.rb')

class CaraokeBarTest < Minitest::Test

  def setup
    @bar = CaraokeBar.new("Heavy Metal Sing Song Bar")

    @room1 = Room.new("Small", 5)
    @room2 = Room.new("Medium", 10)
    @room3 = Room.new("Large", 15)
    @rooms = [@room1, @room2, @room3]
    @bar.add_rooms_to_bar(@rooms)

    @drink1 = Drink.new("beer", 3, 1)
    @drink2 = Drink.new("cider", 4, 2)
    @drink3 = Drink.new("wine", 5, 3)
    @drinks = [{@drink1 => 200},
              {@drink2 => 150},
              {@drink3 => 100}]
    @bar.add_drinks_to_bar(@drinks)

    @guest1 = Guest.new("Sammy", 21, 4, "Scourge of Iron", 0, 3, 5) #not enough cash
    @guest2 = Guest.new("Joe", 17, 100, "Twighlight of the Thunder God", 0, 1, 5) #too young
    @guest3 = Guest.new("Sandra", 21, 100, "Captor of Sin", 11, 1, 5) #too pished
    @guest4 = Guest.new("Liz", 21, 100, "Sacrifice Unto Sebek", 0, 9, 10)
    @guest5 = Guest.new("Dwayne", 21, 100, "Envenomed", 0, 8, 8)
    @guest6 = Guest.new("Jonny", 21, 100, "Self Bias Resistor", 0, 7, 6)
    @guest7 = Guest.new("Chris", 21, 100, "Foot to the Throat", 0, 6, 4)
    @guest8 = Guest.new("Stu", 21, 100, "Omerta", 0, 5, 2)
    @guest9 = Guest.new("Lucy", 21, 100, "Medusa", 0, 4, 4)
    @guest10 = Guest.new("Sarah", 21, 100, "Fight em till you can't", 0, 1, 8)
    @guestgroup = [@guest1, @guest2, @guest3, @guest4, @guest5, @guest6, @guest7, @guest8, @guest9, @guest10]
    @bar.add_guest_group_to_bar(@guestgroup) #cashintill = 135, 7 guests in
    @guestgroupinbar = [@guest4, @guest5, @guest6, @guest7, @guest8, @guest9, @guest10]
    @bar.add_group_to_room(@room2, @guestgroupinbar) #cashintill = 205, 0 guests in bar, 7 in room2

    # def skip #uncomment to run all
    # end
  end

  def test_name
    skip
    assert_equal "Heavy Metal Sing Song Bar", @bar.name
  end

  def test_entryfee
    skip
    assert_equal 5, @bar.entryfee
  end

  def test_cashintill
    skip
    assert_equal 100, @bar.cashintill
  end

  def test_rooms
    skip
    assert_equal [], @bar.rooms
  end

  def test_peopleinbar
    skip
    assert_equal [], @bar.peopleinbar
  end

  def test_drinks
    skip
    assert_equal [], @bar.drinks
  end

  def test_guestspending
    skip
    assert_equal [], @bar.guestspending
  end

  def test_add_rooms_to_bar
    skip
    assert_equal 3, @bar.add_rooms_to_bar(@rooms).count
  end

  def test_add_drinks_to_bar
    skip
    assert_equal 3, @bar.add_drinks_to_bar(@drinks).count
  end

  def test_value_of_drinks_stock
    skip
    assert_equal 1700, @bar.total_value_of_drinks_stock
  end

  def test_add_guest_to_bar_no_money
    skip
    @bar.add_guest_to_bar(@guest1)
    assert_equal 0, @bar.peopleinbar.count
    assert_equal 4, @guest1.guestcash
    assert_equal 100, @bar.cashintill
  end

  def test_add_guest_to_bar_too_young
    skip
    @bar.add_guest_to_bar(@guest2)
    assert_equal 0, @bar.peopleinbar.count
    assert_equal 100, @guest2.guestcash
    assert_equal 100, @bar.cashintill
  end

  def test_add_guest_to_bar_too_pished
    skip
    @bar.add_guest_to_bar(@guest3)
    assert_equal 0, @bar.peopleinbar.count
    assert_equal 100, @guest3.guestcash
    assert_equal 100, @bar.cashintill
  end

  def test_add_guest_to_bar
    skip
    @bar.add_guest_to_bar(@guest4)
    assert_equal 1, @bar.peopleinbar.count
    assert_equal 95, @guest4.guestcash
    assert_equal 105, @bar.cashintill
    assert_equal 1, @bar.guestspending.count
  end

  def test_add_guestgroup_to_bar
    skip
    @bar.add_guest_group_to_bar(@guestgroup)
    assert_equal 7, @bar.peopleinbar.count
    assert_equal 4, @guest1.guestcash
    assert_equal 100, @guest2.guestcash
    assert_equal 100, @guest3.guestcash
    assert_equal 95, @guest4.guestcash
    assert_equal 95, @guest5.guestcash
    assert_equal 95, @guest6.guestcash
    assert_equal 95, @guest7.guestcash
    assert_equal 135, @bar.cashintill
    assert_equal 7, @bar.guestspending.count

  end

  def test_add_person_to_room
    skip
    @bar.add_person_to_room(@room1, @guest4)
    assert_equal 6, @bar.peopleinbar.count
    assert_equal 1, @room1.peopleinroom.count
    assert_equal 145, @bar.cashintill
    assert_equal 85, @guest4.guestcash
  end

  def test_add_person_to_room_too_many
    skip
    @bar.add_person_to_room(@room1, @guest4)
    @bar.add_person_to_room(@room1, @guest5)
    @bar.add_person_to_room(@room1, @guest6)
    @bar.add_person_to_room(@room1, @guest7)
    @bar.add_person_to_room(@room1, @guest8)
    @bar.add_person_to_room(@room1, @guest9)
    assert_equal 2, @bar.peopleinbar.count
    assert_equal 5, @room1.peopleinroom.count
    assert_equal 185, @bar.cashintill
    assert_equal 85, @guest4.guestcash
    assert_equal 85, @guest5.guestcash
    assert_equal 85, @guest6.guestcash
    assert_equal 85, @guest7.guestcash
    assert_equal 85, @guest8.guestcash
    assert_equal 95, @guest9.guestcash

  end

  def test_add_group_to_room_not_big_enough
    skip
    @bar.add_group_to_room(@room1, @guestgroup)
    assert_equal 7, @bar.peopleinbar.count
    assert_equal 0, @room1.peopleinroom.count
    assert_equal 135, @bar.cashintill
    assert_equal 95, @guest4.guestcash
    assert_equal 95, @guest5.guestcash
    assert_equal 95, @guest6.guestcash
    assert_equal 95, @guest7.guestcash
    assert_equal 95, @guest8.guestcash
    assert_equal 95, @guest9.guestcash
    assert_equal 95, @guest10.guestcash
  end

  def test_add_group_to_room_big_enough
    skip
    @bar.add_group_to_room(@room2, @guestgroupinbar)
    assert_equal 0, @bar.peopleinbar.count
    assert_equal 7, @room2.peopleinroom.count
    assert_equal 205, @bar.cashintill
    assert_equal 85, @guest4.guestcash
    assert_equal 85, @guest5.guestcash
    assert_equal 85, @guest6.guestcash
    assert_equal 85, @guest7.guestcash
    assert_equal 85, @guest8.guestcash
    assert_equal 85, @guest9.guestcash
    assert_equal 85, @guest10.guestcash
  end

  def test_remove_guest_from_room
    skip
    @bar.remove_guest_from_room(@room2, @guest4)
    assert_equal 1, @bar.peopleinbar.count
    assert_equal 6, @room2.peopleinroom.count
  end

  def test_remove_group_from_room
    skip
    @bar.remove_group_from_room(@room2)
    assert_equal 7, @bar.peopleinbar.count
    assert_equal 0, @room2.peopleinroom.count
  end

  def test_remove_guest_from_bar
    skip
    @bar.remove_guest_from_bar(@guest4)
    assert_equal 6, @bar.peopleinbar.count
    assert_equal false, @bar.find_guest(@guest4)
  end

  def test_sell_alcohol
    skip
    @bar.sell_alcohol(@guest4, @drink1)
    hash = @bar.guestspending.find{|hash| hash[@guest4]}
    spending = hash[@guest4]
    assert_equal 82, @guest4.guestcash
    assert_equal 1, @guest4.inebriation
    assert_equal 10, @guest4.singability
    assert_equal 199, @bar.drinks[0][@drink1]
    assert_equal 3, spending
  end

  def test_sell_alcohol_multiple
    skip
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    hash = @bar.guestspending.find{|hash| hash[@guest4]}
    spending = hash[@guest4]
    assert_equal 73, @guest4.guestcash
    assert_equal 4, @guest4.inebriation
    assert_equal 10, @guest4.singability
    assert_equal 196, @bar.drinks[0][@drink1]
    assert_equal 12, spending
  end

  def test_sell_alcohol_multiple_more
    skip
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    @bar.sell_alcohol(@guest4, @drink1)
    hash = @bar.guestspending.find{|hash| hash[@guest4]}
    spending = hash[@guest4]
    assert_equal 55, @guest4.guestcash
    assert_equal 10, @guest4.inebriation
    assert_equal 5, @guest4.singability
    assert_equal 190, @bar.drinks[0][@drink1]
    assert_equal 30, spending
  end

  def test_sell_alcohol_multiple_more
    # skip
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    @bar.sell_alcohol(@guest10, @drink1)
    hash = @bar.guestspending.find{|hash| hash[@guest10]}
    spending = hash[@guest10]
    assert_equal 55, @guest10.guestcash
    assert_equal 10, @guest10.inebriation
    assert_equal 0, @guest10.singability
    assert_equal 190, @bar.drinks[0][@drink1]
    assert_equal 30, spending
  end

end
