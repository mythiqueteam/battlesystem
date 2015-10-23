require_relative "../inventory.rb"
require_relative "weapon/weapon.rb"
require_relative "armor/plate/plate.rb"

module Inventory


    # Sum the bonus for all pieces in equipment
    # 
    # @equipment[Equipment] Set of weapon, armor, accessories
    #
    # @return [Status] Sum of all bonus
    def self.summary_bonus(equipment)
        ## initialisation
        total_hp = Stats::HitPoint.new(0,Stats::MAX_HP)
        total_mp = Stats::MagicPoint.new(0,Stats::MAX_MP)
        total_force = Stats::DEFAULT_FORCE
        total_defense = Stats::DEFAULT_DEFENSE

        ##sum bonus for each piece of equipment
        all_pieces = equipment.instance_variables
        for piece in all_pieces do
            total_hp += equipment.instance_variable_get(piece).bonus.hit_point
            total_mp += equipment.instance_variable_get(piece).bonus.magic_point
            total_force += equipment.instance_variable_get(piece).bonus.force
            total_defense += equipment.instance_variable_get(piece).bonus.defense
        end
        Stats::Status.new(total_hp, total_mp, total_force, total_defense)
    end



    class Equipment
        def initialize(weapon, plate)
            @weapon = weapon
            @plate = plate
            #add here other part of equipment such as helmet, shield etc.
        end
        
        def to_s
            list_bonus = "list of bonus" #FIXME: create a routine to list out all bonus for a given equipment (eg sword)
            "("+list_bonus+")"
        end
    end
    
    DEFAULT_EQUIPMENT = Inventory::Equipment.new(Inventory::DEFAULT_WEAPON,
                                                 Inventory::DEFAULT_PLATE)
end


equipment = Inventory::DEFAULT_EQUIPMENT
total_bonus = Inventory::summary_bonus(equipment)
puts total_bonus
