##remove require relative before commiting
#require_relative "../common/value.rb"
#require_relative "./stats.rb"

module Stats

    class HitPoint < Common::Value 
        def initialize(start, max)
            @min = Stats::MIN_HP 
            @value = start
            @unit = "HP"
            @max = max

            #sanity check
            @max = Common::ensure_range(@max, Stats::MIN_HP, Stats::MAX_HP)
            @value = Common::ensure_range(@value, @min, @max) ##problem
        end




        def +(a)
            if a.is_a?(Numeric)
                @value += a
                @value = Common::ensure_range(@value, @min, @max)
            elsif a.is_a?(Object)
                Common::check_unit(self, a)
                @value += a.value
                @max = [@max,a.max].max #new max is max(a,b)
            else
                raise TypeError, "You are trying to sum two objects of different kinds."
            end
            HitPoint.new(@value,@max)
        end
    end


end
