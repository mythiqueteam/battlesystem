require_relative "./stats.rb"

module Stats

    class Force < Common::Value
        def initialize(value)
            @value = value
            @min = Stats::MIN_STAT_VALUE
            @max = Stats::MAX_STAT_VALUE
            @unit = Common::FORCE_UNIT
        end
    end

    DEFAULT_FORCE = Force.new(0)
end
