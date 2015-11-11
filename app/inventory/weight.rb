require_relative "../common/unit.rb"
require_relative "../common/value.rb"

module Inventory
  MAX_WEIGHT = 9999

  class Weight < Common::Value
    def initialize(value)
      @value = value
      @min = 0
      @max = MAX_WEIGHT
      @unit = Common::WEIGHT_UNIT
    end
  end

  DEFAULT_WEIGHT = Weight.new(1)
end
