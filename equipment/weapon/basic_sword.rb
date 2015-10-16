module Weapon
    class BasicSword
        def initialize()
            @name = "Basic Sword"
            @bonus = Stats::DEFAULT_STATUS
            @bonus.force = 2 
        end
    end
end