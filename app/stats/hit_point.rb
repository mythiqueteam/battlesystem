require_relative "../common/value.rb"
require_relative "../common/unit.rb"



module Stats
    MIN_HP = 0
    MAX_HP = 9999
    
    class HitPoint < Common::Value 
        def initialize(start, max)
            @min = Stats::MIN_HP 
            @value = start
            @unit = Common::HP_UNIT
            @max = max

            #sanity check
            @max = Common::ensure_range(@max, Stats::MIN_HP, Stats::MAX_HP)
            @value = Common::ensure_range(@value, @min, @max) 
        end

    end


    # Compute how many hit points a character should have
    def self.how_many_hitpoints(level)
        initial_hp = 100*level.value
        Stats::HitPoint.new(initial_hp, initial_hp)
    end


    DEFAULT_HIT_POINT = HitPoint.new(0, 0)
end
