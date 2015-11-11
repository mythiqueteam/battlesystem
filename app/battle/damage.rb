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
        puts "Target is dead: Damage is set to 0"
        Battle::Damage.new(0)
      else
        #sum bonus from equipment and fighter
        total_force = equipment.sum_bonus("@force") + status.force
        total_defense = target.equipment.sum_bonus("@defense") + target.status.defense
        effective_damage = total_force.value - total_defense.value 
        effective_damage = Common::ensure_range(effective_damage, 
                                                MIN_DAMAGE,
                                                MAX_DAMAGE)
        puts "Damage: #{effective_damage} on #{target}"
        damage = Battle::Damage.new(effective_damage)
      end
    end

  end
end
