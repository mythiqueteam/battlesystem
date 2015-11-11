require_relative "sword.rb"

module Inventory
  class CrystalSword < Inventory::Sword
    attr_reader :name, :weight, :bonus
    def initialize()
      @name = "Crystal Sword"
      @weight = Inventory::DEFAULT_WEIGHT

      #setup bonus
      hit_point = 10
      force = 10
      defense = 1
      @bonus = Stats::Bonus.new(hit_point: hit_point, force: force, defense: defense)
    end
  end
end
