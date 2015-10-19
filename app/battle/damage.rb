require_relative "../common/value.rb"

module Battle
    class Damage < Common::Value
        def initialize(value, type=Battle::NORMAL_TYPE) 
            @value = value
            @min = Battle::MIN_DAMAGE
            @max = Battle::MAX_DAMAGE
            @unit = Battle::DAMAGE_UNIT
            @type = type
        end


        def self.normal(force, target) #eventually add weapon
            effective_damage = force.value - target.status.defense.value
            #add here other effect such as armor, weapon
            Battle::Damage.new(effective_damage)
        end
    end
end