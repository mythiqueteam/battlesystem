require_relative "../armor.rb"

module Inventory
    class Plate < Inventory::Armor
        attr_reader :category
        def initialize(name="None")
            @name = name
            @bonus = Stats::DEFAULT_STATUS
            @category = ["Armor", "Plate"]
        end
    end
    DEFAULT_PLATE = Inventory::Plate.new()
end
