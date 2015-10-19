module Equipment
    class Equiped
        def initialize(weapon=DEFAULT_WEAPON, 
                       armor=DEFAULT_ARMOR)
            @weapon = weapon
            @armor = armor
        end
    end

end