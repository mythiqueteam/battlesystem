module Stats

    class Defense < Common::Value
        def initialize(value)
            @value = value
            @min = 0
            @max = Stats::MAX_STAT_VALUE
            @unit = DEFENSE_UNIT
        end
    end
end
