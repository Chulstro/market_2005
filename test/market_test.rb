require './lib/item'
require './lib/vendor'
require './lib/market'
require 'minitest/autorun'

class MarketTest < Minitest::Test 

  def setup
    @market = Market.new("South Pearl Street Farmers Market")
  end

  def test_its_initial_values
    assert_equal "South Pearl Street Farmers Market", @market.name
    assert_equal [], @market.vendors
  end
end
