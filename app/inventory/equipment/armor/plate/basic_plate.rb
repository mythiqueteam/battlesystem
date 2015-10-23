require_relative "plate.rb"

module Inventory
    class BasicPlate < Inventory::Plate
        attr_reader :name, :weight, :bonus
        def initialize()
            @name = "Basic Plate"
            @weight = Inventory::DEFAULT_WEIGHT

            #setup bonus
            hit_point = 10
            defense = 3
            @bonus = Stats::Bonus.new(hit_point: hit_point, defense: defense)
        end
    end
end