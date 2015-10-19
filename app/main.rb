require_relative "./character/hero.rb"
require_relative "./stats/level.rb"

initial_level = Stats::Level.new(2)
zeyn = Character::Hero.new("Zeyn", "Dalton", level=initial_level)
puts zeyn