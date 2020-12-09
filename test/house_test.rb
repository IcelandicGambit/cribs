require './lib/room'
require '.lib/house'

class HouseTest < Minitest::Test
  def setup
    @house = House.new("$400000", "123 Sugar Lane")
  end

  def test_it_exists
    assert_instance_of  House, @house
  end

  def test_it_returns_price
    assert_equal @house.price, "$400000"
  end

  def test_it_returns_address
    assert_equal @house.address, "123 Sugar Lane"
  end

  def test_it_has_rooms
    assert_empty @house.rooms
  end

  def test_it_can_add_room
    assert_equals @house.rooms.length, 0
  end

  def test_it_has_1_room
    room = Room.new(:bedroom, 10, '13')
    @house.add_room(room)
    assert_equals @house.rooms.length, 1
  end

  def test_it_has_1_room
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:bedroom, 10, '13')
    @house.add_room(room1)
    @house.add_room(room2)
    assert_equals @house.rooms.length, 2
  end
end
