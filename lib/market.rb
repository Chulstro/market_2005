
class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors =[]
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.keys.include?(item)
    end
  end

  def total_inventory
  end

  def sorted_item_list
    items = all_items.map do |key|
      key.name
    end
    items.sort do |a ,b|
      a <=> b
    end.uniq
  end

  def all_items
    @vendors.flat_map do |vendor|
      vendor.inventory.keys
    end
  end

  def oversocked_items
    accumulator = []
    all_items.find_all do |item|
      accumulator << item if quantity[item] > 50 && vendors_that_sell(item).count > 1
      end
    accumulator.uniq
  end

  def quantity
    accumulator = Hash.new(0)
    @vendors.each do |vendor|
      vendor.inventory.keys.each do |key|
        accumulator[key] += vendor.inventory[key]
      end
    end
    accumulator
  end
end
