!# /usr/bin/env ruby

require_relative 'bike'

pannier = Pannier.new()
pannier.add_cargo(:apples)
pannier.add_cargo(:water)
pannier.add_cargo(:repair_kit)

bike = Bike.new(1, :pink, 99.99, pannier: pannier)

puts "Space for #{pannier.remaining_capacity} items left."

bike.rent!
