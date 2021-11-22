class Rental

  attr_reader :base_price, :weight

  def initialize(base_price:, weight:)
    @base_price = base_price
    @weight = weight
  end

  def price
    (self.base_price * 2) + (self.weight * 2)
  end

end
