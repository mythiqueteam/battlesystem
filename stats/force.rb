module Stats

    class Force < Common::Value
        def initialize(value)
            @value = value
            @min = 0
            @max = Stats::MAX_STAT_VALUE
            @unit = FORCE_UNIT
        end
    end
end
