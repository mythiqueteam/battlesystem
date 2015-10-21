require_relative "../equipment.rb"

module Inventory
    class Armor < Inventory::Equipment
        attr_reader :bonus, :category
        def initialize(bonus=Stats::DEFAULT_STATUS)
            @bonus = bonus
            @category = ["Armor"]
        end
    end
end