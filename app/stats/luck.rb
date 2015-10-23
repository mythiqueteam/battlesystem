require_relative "../common/unit.rb"
require_relative "./stats.rb"

module Stats

    class Luck < Common::Value
        def initialize(value)
            @value = value
            @min = Stats::MIN_STAT_VALUE
            @max = Stats::MAX_STAT_VALUE
            @unit = Common::LUCK_UNIT
        end
    end


    DEFAULT_LUCK = Luck.new(0)
end
