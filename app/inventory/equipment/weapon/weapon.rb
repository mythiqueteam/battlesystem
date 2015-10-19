require_relative "../../../stats/status.rb"
require_relative "../../object.rb"

module Inventory
    module Equipment
        class Weapon < Inventory::Object
            attr_reader :bonus, :category
            def initialize(bonus=Stats::DEFAULT_STATUS)
                @bonus = bonus
                @category = ["Weapon"]
            end

            def to_s
                list_bonus = "list of bonus" #FIXME: create a routine to list out all bonus
                @name+"("+list_bonus+")"
            end
        end
    end
end