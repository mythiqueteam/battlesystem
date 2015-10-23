module Common

    # val: value in float
    # unit: usually string
    # max: max value possible
    #
    # Prints out conveniently the value
    def self.express(val, unit, max=nil)
        if max == nil
            val.to_s + " " + unit.to_s
        else
            val.to_s + " / " + max.to_s + " " + unit.to_s
        end
    end



    # val: new value to test
    # min: minimum authorized
    # max: maximum authorized
    #
    # Ensure that val is within [min,max]
    #
    # Ternary operator cannot work, because we need to exit the function after one change
    def self.ensure_range(val, min, max)
        if val < min
          min
        elsif val > max
          max
        else
          val
        end
    end






    # a, b: Value objects
    #
    # Check if a, and b have the same units
    def self.check_unit(a, b)
        if a.unit != b.unit
            raise TypeError, "a and b have different unit"
        else
            return nil
        end
    end




    # unit: for example $ for money. Should be immutable, once created ?
    #
    # Value that can take only a value in a given range, eg: Strength [0,MAX_STATS] or gold [0, MAX_GOLD]
    class Value
        attr_accessor :unit, :min, :max
        attr_reader :value

        def initialize(value=0, min=0, max=0, unit=nil)
            @value = value
            @min = min
            @unit = unit

            if @value > 0 and max == 0
                @max = @value
            else
                @max = max
            end

            @value = Common::ensure_range(@value, @min, @max) #check if initialization is correct
        end

        def value=(new_value)
            @value = Common::ensure_range(new_value, @min, @max)
        end

        def to_s
            Common::express(@value, @unit, @max)
        end

        def +(a)
            if a.is_a?(Numeric)
                output_value = Common::ensure_range(@value + a, @min, @max)
            elsif a.is_a?(Object)
                Common::check_unit(self, a)
                output_value = @value + a.value
            else
                raise TypeError, "You are trying to sum two objects of different kinds."
            end
            Value.new(output_value, @min, @max, @unit)
        end

        def -(a)
            b = -a
            self + b
        end

        def -@
            @value = -@value
        end

        def coerce(other)
            [self, other]
        end

    end


end


