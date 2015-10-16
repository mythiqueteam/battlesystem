module Weapon
    class CrystalSword
        def initialize()
            @name = "Crystal Sword"
            @bonus = Stats::DEFAULT_STATUS
            @bonus.force = 2
            @bonus.magic_point = 50 
        end
    end
end