require './lib/item'
require './lib/vendor'
require 'minitest/autorun'

class VendorTest < Minitest::Test

  def setup
    @item1 = Item.new({name: "Peach", price: "$.075"})
    @item2 = Item.new({name: "Tomato", price: "$0.50"})
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  def test_initial_values
    expected = {}
    assert_equal "Rocky Mountain Fresh", @vendor.name
    assert_equal expected, @vendor.inventory
  end
end
