require_relative "../../stats/status.rb"

module Weapon
    DEFAULT_WEAPON = nil
    class Weapon < Equipment::Object
        def initialize(bonus=Stats::DEFAULT_STATUS)
            @bonus = bonus
        end
    end
end