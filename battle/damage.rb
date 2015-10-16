require_relative "../common/value.rb"

module Battle
    class Damage < Common::Value
        def initialize(force, defense, type=Battle::NORMAL_TYPE) 
            @value = force.value - defense.value
            @min = Stats::MIN_HP
            @max = Stats::MAX_HP
            @unit = Battle::DAMAGE_UNIT
            @type = type
        end
    end
end