# unit: for example $ for money. Should be immutable, once created ?
#
# Value that can take only a value in a given range, eg: Strength [0,MAX_STATS] or gold [0, MAX_GOLD]








# val: value in float
# unit: usually string
# max: max value possible
#
# Prints out conveniently the value
def express(val, unit, max=nil)
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
def ensure_range(val, min, max)
    if val < min
        return min
    else
        results=val
    end

    if val > max
        return max
    else
        results = val
    end

    return results
end





# a, b: Value objects
#
# Check if a, and b have the same units
def check_unit(a, b)
    if a.unit != b.unit
        raise TypeError, "a and b have different unit"
    else
        return nil
    end
end





class Value
    attr_accessor :unit

    def initialize(value=0, min=0, max=0, unit=nil)
        @value = value
        @min = min
        @max = max
        @unit = unit
        @value = ensure_range(@value, @min, @max) #check if initialization is correct
    end

    def value=(new_value)
        @value = ensure_range(new_value, @min, @max)
    end

    def value
        express(@value, @unit, @max)
    end

    def max
        express(@max, @unit)
    end

    def min
        express(@min, @unit)
    end

end