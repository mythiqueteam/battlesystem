require_relative "../equipment.rb"

module Inventory
    class Weapon < Inventory::PieceOfEquipment
        attr_reader :bonus, :category
        def initialize(bonus=Stats::DEFAULT_STATUS)
            @bonus = bonus
            @category = ["Weapon"]
        end
    end
end