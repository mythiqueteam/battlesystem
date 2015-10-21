require_relative "../armor.rb"

module Inventory
    class Plate < Inventory::Armor
        attr_reader :category
        def initialize()
            @category = ["Armor", "Plate"]
        end
    end
end
