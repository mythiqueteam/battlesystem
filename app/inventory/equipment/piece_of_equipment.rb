require_relative "../inventory.rb"

module Inventory
    class PieceOfEquipment
        def to_s
            list_bonus = "list of bonus" #FIXME: create a routine to list out all bonus for a given equipment (eg sword)
            @name+"("+list_bonus+")"
        end
    end
end