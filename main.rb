!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'container'

container = Container.new()
container.add(:apples)
container.add(:water)
container.add(:repair_kit)

bike = Bike.new(id: 1, color: :pink, price: 99.99, container: container)

puts "Space for #{container.remaining_capacity} items left."

bike.rent!
