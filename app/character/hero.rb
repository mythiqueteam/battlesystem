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
require_relative "../battle/battle.rb"
require_relative "../battle/damage.rb"

module Character

    class Hero < Character::Human
        attr_accessor :level
        def initialize(first_name, last_name,
                       level=Stats::DEFAULT_LEVEL,
                       status=Stats::DEFAULT_STATUS,
                       equipment=DEFAULT_EQUIPMENT,
                       is_dead = false)
            @first_name = first_name
            @last_name = last_name
            @level = level
            @status = status
            @is_dead = is_dead
        end


        def to_s
            @first_name+" "+@last_name+" : "+@level.to_s
        end


        def attack(target)
            damage = Battle::Damage.normal(@status.force, target)
            target.status.hit_point -= damage
        end

        def pass() #do nothing
            nil
        end
    end


end
