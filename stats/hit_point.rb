module Stats

    class HitPoint < Value ##this will certainly raise an error
        #BUG: import constants 
        def initialize(value = Stats::MIN_INITIAL_HP, max = Stats::MIN_INITIAL_HP)
            @min = 0 
            @value = value
            @unit = "HP"

            if max != MIN_INITIAL_HP #gives priority to manual input
                @max = max
            end

            @value = ensure_range(@value, @min, @max)
        end

        def +(a)
            if a.is_a?(Numeric)
                @value += a
                @value = ensure_range(@value, @min, @max)
            elsif a.is_a?(Object)
                check_unit(self, a)
                @value += a.value
            else
                raise TypeError, "You are trying to sum two objects of different kinds."
            end

        end
    end


end