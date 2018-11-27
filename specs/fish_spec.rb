require('minitest/autorun')
require('minitest/rg')

require_relative('../fish')

class FishTest < MiniTest::Test
  def setup
    @fish = Fish.new("Charlie")
  end

  def test_fish_has_name
    assert_equal("Charlie", @fish.name)
  end
end
