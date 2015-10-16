require_relative "./character.rb"
require_relative "./human.rb"
require_relative "../common/value.rb"
require_relative "../stats/hit_point.rb"
require_relative "../stats/magic_point.rb"
require_relative "../stats/level.rb"
require_relative "../stats/status.rb"
require_relative "../stats/stats.rb"
require_relative "../ennemy/ennemy.rb"
require_relative "../ennemy/succube.rb"

module Character

    class Hero < Character::Human
        attr_accessor :level
        def initialize(first_name, last_name,
                       level=INITIAL_LEVEL)
            @first_name = first_name
            @last_name = last_name
            @level = level
            @status = Stats::Status.new(@level)
        end


        def to_s
            @first_name+" "+@last_name+" : "+@level.to_s
        end


        def attack(target)
            damage = @status.force.value - target.status.defense.value #IMPROVEMENT: should create a damage class
            target.status.hit_point -= damage
        end
    end


end