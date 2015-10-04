class Character
	def initialize(name)
		@name = name
	end
end

# unit: for example $ for money. Should be immutable, once created ?
#
# Value that can take only a value in a given range, eg: Strength [0,MAX_STATS] or gold [0, MAX_GOLD]
class Value
	def initialize(value=0, min=0, max=0, unit=nil)
		@value= value
		@min = min
		@max = max
		@unit = unit
	end

	def value=(new_value)
		new_value > @max ? @value = new_value : @value = @max
		new_value < @min ? @value = new_value : @value = @min
	end
end




# One stat detail, eg: Strength, Defense
class Stat < Value
	def initialize(name="", details=DEFAULT_STAT)
		@name = name
		@details = details
	end
end

class CharacterStats
	def initialize(hit_point, magic_point, attack)
		@max_hit_points = max_hit_points
		@max_magic_points = max_magic_points
	end


	def max_hit_points=(value)

	end
end


class PlayableCharacter < Character

end

