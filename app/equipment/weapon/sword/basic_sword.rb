require_relative "../../stats/status.rb"

module Weapon
    class BasicSword < Weapon::Sword
        def initialize()
            @name = "Basic Sword"
            @weight = 
            hit_point = Stats::HitPoint.new(10,10)
            magic_point = Stats::MagicPoint.new(0,0)
            force = Stats::Force.new(1)
            defense = Stats::Force.new(1)
            @bonus = Stats::Status.new(hit_point, magic_point, force, defense)

        end
    end
end