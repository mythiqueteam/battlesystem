##remove require relative before commiting
#require_relative "../common/value.rb"
#require_relative "./stats.rb"

module Stats

    class HitPoint < Common::Value 
        def initialize(start = Stats::MIN_INITIAL_HP,
                       max = Stats::MIN_INITIAL_HP)
            @min = Stats::MIN_HP 
            @value = start
            @unit = "HP"

            #initialize max
            if @max != Stats::MIN_INITIAL_HP #gives priority to manual input
                @max = @value
            end
            @max = Common::ensure_range(@max, Stats::MIN_HP, Stats::MAX_HP)


            @value = Common::ensure_range(@value, @min, @max) ##problem
        end




        def +(a)
            if a.is_a?(Numeric)
                @value += a
                @value = Common::ensure_range(@value, @min, @max)
            elsif a.is_a?(Object)
                check_unit(self, a)
                @value += a.value
            else
                raise TypeError, "You are trying to sum two objects of different kinds."
            end

        end
    end


end


#aa=Stats::HitPoint.new(1e6,1e7)
#puts aa.value, aa.min,aa.max,aa.unit