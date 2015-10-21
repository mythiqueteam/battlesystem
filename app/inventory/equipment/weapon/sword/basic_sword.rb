require_relative "../../../weight.rb"
require_relative "../../../../stats/hit_point.rb"
require_relative "../../../../stats/magic_point.rb"
require_relative "../../../../stats/force.rb"
require_relative "../../../../stats/defense.rb"
require_relative "sword.rb"

module Inventory
    module Equipment
        class BasicSword < Inventory::Equipment::Sword
            attr_reader :name, :weight, :bonus
            def initialize()
                @name = "Basic Sword"
                @weight = Inventory::DEFAULT_WEIGHT

                #setup bonus
                hit_point = Stats::HitPoint.new(10,10)
                magic_point = Stats::MagicPoint.new(0,0)
                force = Stats::Force.new(1)
                defense = Stats::Defense.new(1)
                @bonus = Stats::Status.new(hit_point, magic_point, force, defense)

            end
        end
    end
end