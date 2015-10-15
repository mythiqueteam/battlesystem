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




class Value
    def initialize(value=0, min=0, max=0, unit=nil)
        @value= value
        @min = min
        @max = max
        @unit = unit
    end

    def value=(new_value)
        new_value < @min ? @value = @min : @value = new_value
        new_value > @max ? @value = @max : @value = new_value
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




fish = Value.new(1.2354,2,3,"fish")
puts fish.value
puts fish.min
puts fish.max
fish.value = 1
puts fish.value
