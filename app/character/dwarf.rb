require_relative "./character.rb"


# dwarf don't have first and last names, but a name only. Dwarf's father's name must be known. currently set to unknown
module Character
  class Dwarf < Character::Living
    attr_reader :name, :father, :birthday
    
    def initialize(name, father, 
                   birthday=Common::UNKNOWN)
      @name = name
      @father = Common::UNKNOWN #FIXME
      @birthday = birthday
    end

  end
end


