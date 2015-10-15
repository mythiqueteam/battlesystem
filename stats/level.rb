require_relative "../common/value.rb"
require_relative "./stats.rb"

module Stats

    class Level < Common::Value 
        def initialize(start)
            @min = Stats::MIN_LEVEL
            @value = start
            @unit = "Level"
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
