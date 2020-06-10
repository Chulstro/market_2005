
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
    items = @vendors.flat_map do |vendor|
      vendor.inventory.keys.map do |key|
        key.name
      end
    end
    items.sort do |a ,b|
      a <=> b
    end.uniq
  end
end
