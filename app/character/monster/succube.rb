require_relative "../../battle/fighter.rb"

module Character  
    module Monster 
        class Succube < Battle::Fighter
            attr_reader :name, :level, :status
            def initialize(level=Stats::DEFAULT_LEVEL, 
                           status=Stats::DEFAULT_STATUS,
                           equipment=Inventory::DEFAULT_EQUIPMENT)
                @name = "Succube"
                @level = level
                @status = status
                @equipment = equipment
            end
        end
    end
end