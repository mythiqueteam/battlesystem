require_relative "./stats.rb"
require_relative "./level.rb"
require_relative "./hit_point.rb"
require_relative "./magic_point.rb"


module Stats
    class Status
        attr_accessor :hit_point, :magic_point, :force, :defense
        def initialize(level)
            @hit_point = Stats::how_many_hitpoints(level)
            @magic_point = Stats::how_many_magicpoints(level)
            @force = 2
            @defense = 1
        end
    end
end