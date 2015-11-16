require_relative "./inventory.rb"

module Inventory
  class Object
    attr_reader :name ,:weight, :is_quest, :category
    def initialize(name, 
                   weight=Inventory::DEFAULT_WEIGHT, 
                   is_quest: false,
                   category: Array.new())
      @name = name
      @weight = weight
      @is_quest = is_quest
      @category = category #sword, potion, etc (for sort), will be a list from which we add more infos
    end

    # force: bypass is_quest attribute, and force destruction of object
    def destroy(force: false)
      if @is_quest and not force
        raise SecurityError, "Cannot destroy quest object."
      else
        nil
      end
    end

    def to_s
      @name+" ("+@category+")"
    end
  end
end
