require_relative "../inventory.rb"
require_relative "weapon/weapon.rb"
require_relative "armor/plate/plate.rb"

module Inventory

    class Equipment
        def initialize(weapon, plate)
            @weapon = weapon
            @plate = plate
            #add here other part of equipment such as helmet, shield etc.
        end


        # Sum the bonus for all pieces in equipment
        # 
        # @equipment[Equipment] Set of weapon, armor, accessories
        #
        # @return [Status] Sum of all bonus
        def sum_bonus
            ## initialisation
            total_hp = Stats::HitPoint.new(0,Stats::MAX_HP)
            total_mp = Stats::MagicPoint.new(0,Stats::MAX_MP)
            total_force = Stats::DEFAULT_FORCE
            total_defense = Stats::DEFAULT_DEFENSE
            total_dexterity = Stats::DEFAULT_DEXTERITY
            total_luck = Stats::DEFAULT_LUCK

            ##sum bonus for each piece of equipment
            all_pieces = self.instance_variables
            for piece in all_pieces do
                total_hp += self.instance_variable_get(piece).bonus.hit_point
                total_mp += self.instance_variable_get(piece).bonus.magic_point
                total_force += self.instance_variable_get(piece).bonus.force
                total_defense += self.instance_variable_get(piece).bonus.defense
                total_dexterity += self.instance_variable_get(piece).bonus.dexterity
                total_luck += self.instance_variable_get(piece).bonus.luck
            end
            Stats::Status.new(hit_point: total_hp,
                              magic_point: total_mp,
                              force: total_force,
                              defense: total_defense,
                              dexterity: total_dexterity,
                              luck:total_luck)
        end
        
        def to_s
            self.sum_bonus.to_s
        end
    end

    DEFAULT_EQUIPMENT = Inventory::Equipment.new(Inventory::DEFAULT_WEAPON,
                                                 Inventory::DEFAULT_PLATE)
end
