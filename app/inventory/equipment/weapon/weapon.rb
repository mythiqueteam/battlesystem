require_relative "../../../stats/status.rb"
require_relative "../../object.rb"

module Inventory
    module Equipment
        class Weapon < Inventory::Object
            attr_reader :bonus, :category
            def initialize(bonus=Stats::DEFAULT_STATUS)
                @bonus = bonus
                @category = "Weapon"
            end
        end
    end
end



sword = Inventory::Equipment::Weapon.new()
puts sword.bonus, sword.category