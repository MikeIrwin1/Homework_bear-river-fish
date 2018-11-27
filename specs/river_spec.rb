require('minitest/autorun')
require('minitest/rg')

require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test
  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Charlie")
  end

  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    @river.add_fish(@fish1)
    assert_equal([@fish1], @river.fish)
  end

end
