
class Item
  attr_reader :name, :price

  def initialize(item_info)
    @price = item_info[:price].delete("$").to_f.round(2)
    @name = item_info[:name]
  end

end
