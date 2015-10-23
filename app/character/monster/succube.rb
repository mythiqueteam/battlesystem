require_relative "../../battle/fighter.rb"

module Character  
    module Monster 
        class Succube < Battle::Fighter
            attr_reader :name, :level, :status
            attr_accessor :is_dead
            def initialize(level=Stats::DEFAULT_LEVEL, 
                           status=Stats::DEFAULT_STATUS,
                           equipment=Inventory::DEFAULT_EQUIPMENT,
                           is_dead=false)
                @name = "Succube"
                @level = level
                @status = status
                @equipment = equipment
                @is_dead = is_dead
            end
        end
    end
end