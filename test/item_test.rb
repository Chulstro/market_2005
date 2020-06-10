require './lib/item'
require 'minitest/autorun'

class ItemTest < Minitest::Test

  def setup
    @item1 = Item.new({name: "Peach", price: "$.075"})
    @item2 = Item.new({name: "Tomato", price: "$0.50"})
  end

  def test_initial_values
    assert_equal "Tomato", @item2.name
    assert_equal 0.50, @item2.price
  end
end
