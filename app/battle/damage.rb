require_relative "battle.rb"

module Battle
    MIN_DAMAGE = 0
    MAX_DAMAGE = Stats::MAX_HP

    class Damage < Common::Value
        def initialize(value, type=Battle::NORMAL_TYPE) 
            @value = value
            @min = MIN_DAMAGE
            @max = MAX_DAMAGE
            @unit = Common::DAMAGE_UNIT
            @type = type
        end

        # Decrease HP of target
        # 
        # @status [Status] Stat attribute of attacker
        # @equipment [Equipment] Set of equipment (weapon, armor) of attacker
        # @target [Fighter] Target of attack
        # 
        # @return [Damage] damage in HP to target [0, MAX_HP]
        def self.normal(status, equipment, target)
            if target.is_dead
                raise KeyError, "Target is dead"
            else
                #sum bonus from equipment and fighter
                total_force = equipment.sum_bonus.force + status.force
                total_defense = target.equipment.sum_bonus.defense + target.status.defense
                effective_damage = total_force.value - total_defense.value
                damage = Battle::Damage.new(effective_damage)    
                puts total_force, total_defense, damage            
                damage = Common::ensure_range(damage.value, @min, @max)
            end
        end

    end
end