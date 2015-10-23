require_relative "damage.rb"

module Battle

    class Fighter 
        attr_accessor :level, :is_dead
        def initialize(name,
                       level=Stats::DEFAULT_LEVEL,
                       status=Stats::DEFAULT_STATUS,
                       equipment=DEFAULT_EQUIPMENT,
                       is_dead=false)
            @name = name #identifier during combat
            @level = level
            @status = status
            @equipment = equipment
            @is_dead = is_dead
        end

        def attack(target)
            damage = Battle::Damage.normal(@status, @equipment, target)
            target.status.hit_point -= damage
            if target.status.hit_point <= 0
                target.status.hit_point = 0
                target.is_dead = true
                #eventually reset all target status (eg: poison)
            end
        end

        def pass() #do nothing
            nil
        end

        def to_s
            @name+" ("+@level.to_s+")"
        end
    end


end
