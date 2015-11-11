require_relative "../common/unit.rb"
require_relative "./stats.rb"

module Stats
  class Defense < Common::Value
    def initialize(value)
      @value = value
      @min = Stats::MIN_STAT_VALUE
      @max = Stats::MAX_STAT_VALUE
      @unit = Common::DEFENSE_UNIT
    end
  end

  DEFAULT_DEFENSE = Defense.new(0)
end
