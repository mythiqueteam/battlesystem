require_relative "inventory/equipment/weapon/sword/basic_sword.rb"
require_relative "inventory/equipment/armor/plate/basic_plate.rb"


sword = Inventory::BasicSword.new()
plate = Inventory::BasicPlate.new()
equipment = Inventory::Equipment.new(weapon=sword, plate=plate)
puts equipment