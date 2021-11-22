# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :pannier

  def initialize(id:, color:, price:, weight: STANDARD_WEIGHT, rented: false, container:)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @container = container
  end

  def rent!
    self.rented = true
  end

end

