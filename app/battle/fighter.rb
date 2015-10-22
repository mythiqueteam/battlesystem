
module Battle

    class Fighter < Character::Human
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
