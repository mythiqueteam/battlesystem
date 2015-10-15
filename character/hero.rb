=begin
require_relative "./character.rb"
require_relative "./human.rb"
require_relative "../common/value.rb"
require_relative "../stats/hit_point.rb"
require_relative "../stats/magic_point.rb"
require_relative "../stats/level.rb"
=end

module Character

    class Hero < Character::Human
        attr_accessor :level
        def initialize(first_name, last_name,
                       level=INITIAL_LEVEL)
            @first_name = first_name
            @last_name = last_name
            @level = level
            @stats = Stats::status(level)
        end


        def to_s
            @first_name+" "+@last_name+" : "+@level.to_s
        end
    end


end

