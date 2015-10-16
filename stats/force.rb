require_relative "../common/unit.rb"

module Stats
    DEFAULT_FORCE = Force.new(0)

    
    class Force < Common::Value
        def initialize(value)
            @value = value
            @min = MIN_STAT_VALUE
            @max = Stats::MAX_STAT_VALUE
            @unit = Common::FORCE_UNIT
        end
    end
end
