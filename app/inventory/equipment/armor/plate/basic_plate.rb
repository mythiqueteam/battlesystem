require_relative "plate.rb"

module Inventory
    class BasicPlate < Inventory::Plate
        attr_reader :name, :weight, :bonus
        def initialize()
            @name = "Basic Plate"
            @weight = Inventory::Weight.new(5)

            #setup bonus
            hit_point = Stats::HitPoint.new(10,10)
            magic_point = Stats::MagicPoint.new(0,0)
            force = Stats::Force.new(0)
            defense = Stats::Defense.new(3)
            @bonus = Stats::Status.new(hit_point, magic_point, force, defense)
        end
    end
end