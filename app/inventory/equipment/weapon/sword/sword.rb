require_relative "../weapon.rb"

module Inventory
    class Sword < Inventory::Weapon
        attr_reader :category
        def initialize()
            @category = ["Weapon", "Sword"]
        end
    end
end
