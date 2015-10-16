module Stats

    class Defense < Common::Value
        def initialize(value)
            @value = value
            @min = MIN_STAT_VALUE
            @max = Stats::MAX_STAT_VALUE
            @unit = DEFENSE_UNIT
        end
    end
end
