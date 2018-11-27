require('minitest/autorun')
require('minitest/rg')

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Charlie")
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
  end

  def test_bear_has_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_has_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_has_stomach
    assert_equal([], @bear.stomach)
  end

  def test_bear_eat_fish__remove_from_river
    @bear.eat(@fish1, @river)
    assert_equal(1, @river.fish_count)
  end

end
