require_relative "./weapon.rb"

module Weapon
    class Sword < Weapon::Weapon
        def initialize()
            @type = "Sword"
        end
    end
end