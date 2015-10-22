require_relative "./character/hero.rb"
require_relative "./stats/level.rb"
require_relative "./inventory/equipment/armor/plate/basic_plate.rb"

plate = Inventory::BasicPlate.new()
puts plate.to_s