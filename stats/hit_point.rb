require_relative "./stats.rb"
require_relative "../common/value.rb"
require_relative "./magic_point.rb"

module Stats

    class HitPoint < Common::Value 
        def initialize(start, max)
            @min = Stats::MIN_HP 
            @value = start
            @unit = "HP"
            @max = max

            #sanity check
            @max = Common::ensure_range(@max, Stats::MIN_HP, Stats::MAX_HP)
            @value = Common::ensure_range(@value, @min, @max) ##problem
        end

    end


    # Compute how many hit points a character should have
    def self.how_many_hitpoints(level)
        initial_hp = 100*level.value
        Stats::HitPoint.new(initial_hp, initial_hp)
    end
end
