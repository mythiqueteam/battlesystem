require_relative "../object"

module Inventory
    class Equipment
        def initialize(weapon, plate)
            @weapon = weapon
            @plate = plate
            #add here other part of equipment such as helmet, shield etc.
        end
        
        def to_s
            list_bonus = "list of bonus" #FIXME: create a routine to list out all bonus for a given equipment (eg sword)
            @name+"("+list_bonus+")"
        end
    end
end