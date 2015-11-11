require_relative "sword.rb"

module Inventory
  class BasicSword < Inventory::Sword
    attr_reader :name, :weight, :bonus
    def initialize()
      @name = "Basic Sword"
      @weight = Inventory::DEFAULT_WEIGHT

      #setup bonus
      hit_point = 10
      force = 1
      defense = 1
      @bonus = Stats::Bonus.new(hit_point: hit_point, force: force, defense: defense)
    end
  end
end
