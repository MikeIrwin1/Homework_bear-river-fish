require('minitest/autorun')
require('minitest/rg')

require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test
  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Charlie")
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal([@fish1, @fish2], @river.fish)
  end

  def test_river_has_fish__multiple_fish
    assert_equal(2, @river.fish.count)
  end

  def test_fish_count
    @river.fish_count
    assert_equal(2, @river.fish_count)
  end

end
