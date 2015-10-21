require_relative "sword.rb"

module Inventory
    class BasicSword < Inventory::Sword
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