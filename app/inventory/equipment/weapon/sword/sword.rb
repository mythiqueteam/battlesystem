require_relative "../weapon.rb"

module Inventory
    module Equipment        
        class Sword < Inventory::Equipment::Weapon
            attr_reader :category
            def initialize()
                @category = ["Weapon", "Sword"]
            end
        end
    end
end


basic = Inventory::Equipment::Sword.new()
puts basic.category