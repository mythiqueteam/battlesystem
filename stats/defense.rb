require_relative "../common/unit.rb"

module Stats
    DEFAULT_DEFENSE = Defense.new(0)
    class Defense < Common::Value
        def initialize(value)
            @value = value
            @min = MIN_STAT_VALUE
            @max = Stats::MAX_STAT_VALUE
            @unit = Common::DEFENSE_UNIT
        end
    end
end
