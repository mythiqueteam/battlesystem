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

        # Return the complete set of stats (sum over all pieces of equipment)
        def status
            all_attributes = @weapon.bonus.instance_variables
            result = Hash.new(0) #store all attributes
            for attribute in all_attributes do
                attribute_name = attribute.to_s
                attribute_name[0]=""
                result[attribute_name.to_sym] = self.sum_bonus(attribute.to_s)
            end
            Stats::Status.new(result)
        end
        
        def to_s
            self.sum_bonus.to_s
        end
    end

    DEFAULT_EQUIPMENT = Inventory::Equipment.new(Inventory::DEFAULT_WEAPON,
                                                 Inventory::DEFAULT_PLATE)
end