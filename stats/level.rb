require_relative "../common/value.rb"
require_relative "../common/unit.rb"


module Stats
    MIN_LEVEL = 1
    MAX_LEVEL = 100
    DEFAULT_LEVEL = Level.new(0)

    
    class Level < Common::Value 
        def initialize(start)
            @min = Stats::MIN_LEVEL
            @value = start
            @unit = Common::LEVEL_UNIT
            @max = MAX_LEVEL

            #sanity check
            @value = Common::ensure_range(@value, @min, @max) ##problem
        end

        def up(n=1) #level up !
            @value += n 
            @value = Common::ensure_range(@value, @min, @max)
        end
    end

end
