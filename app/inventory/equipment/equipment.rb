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


        # Sum the bonus of all pieces of equipment for a given attribute (eg: HP, Force)
        # 
        # @attribute [String] Attribute name to sum over (eg: "@hit_point", "@force")
        # 
        # @return [value] Sum of bonus for the given attribute given by equipment 
        def sum_bonus(attribute)
            all_pieces = self.instance_variables
            total = 0 #initialize output
            for piece in all_pieces do
                stat = self.instance_variable_get(piece).bonus
                total += stat.instance_variable_get(attribute)
            end
            total
        end
        
        def to_s
            self.sum_bonus.to_s
        end
    end

    DEFAULT_EQUIPMENT = Inventory::Equipment.new(Inventory::DEFAULT_WEAPON,
                                                 Inventory::DEFAULT_PLATE)
end
