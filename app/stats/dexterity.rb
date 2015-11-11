require_relative "../common/unit.rb"
require_relative "./stats.rb"

module Stats

  class Dexterity < Common::Value
    def initialize(value)
      @value = value
      @min = Stats::MIN_STAT_VALUE
      @max = Stats::MAX_STAT_VALUE
      @unit = Common::DEXTERITY_UNIT
    end
  end

  DEFAULT_DEXTERITY = Dexterity.new(0)
end
