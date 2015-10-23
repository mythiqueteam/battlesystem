require_relative "../piece_of_equipment.rb"

module Inventory
    class Armor < Inventory::PieceOfEquipment
        attr_reader :name, :bonus, :category
        def initialize(name="None", bonus=Stats::DEFAULT_STATUS)
            @name = name
            @bonus = bonus
            @category = ["Armor"]
        end
    end
end