# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :pannier

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false, pannier = Pannier.new())
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @pannier = pannier
  end

  def rent!
    self.rented = true
  end

end

class Pannier

  MAX_CARGO_ITEMS = 10
  
  attr_accessor :cargo_contents

  def initialize(cargo_contents = [])
    @cargo_contents = cargo_contents
  end

  def capacity
    MAX_CARGO_ITEMS
  end

  def remaining_capacity
    capacity - cargo_contents.size
  end

  def add_cargo(item)
    cargo_contents << item
  end

  def remove_cargo(item)
    cargo_contents.remove(item)
  end

end

