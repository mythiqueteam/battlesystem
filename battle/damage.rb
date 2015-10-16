require_relative "../common/value.rb"

module Battle
    class Damage < Common::Value
        def initialize(value, type=Battle::NORMAL_TYPE) 
            @value = value
            @min = Stats::MIN_HP
            @max = Stats::MAX_HP
            @unit = Battle::DAMAGE_UNIT
            @type = type
        end
    end
end