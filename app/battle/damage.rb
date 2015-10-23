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
                total_force = Inventory::sum_bonus(equipment).force + status.force
                total_defense = Inventory::sum_bonus(target.equipment).defense + target.defense
                effective_damage = total_force.value - total_defense.value
                Common::ensure_range(effective_damage, @min, @max)
                Battle::Damage.new(effective_damage)
            end
        end

    end
end