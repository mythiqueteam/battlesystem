require_relative "./stats.rb"

module Stats

  # Bonus increases the max value of a status. No limit applies (can be negative and greater than MAX_STAT_VALUE)
  class Bonus
    attr_accessor :hit_point, :magic_point, 
                  :force, :defense, :dexterity, :luck

    def initialize(hit_point: 0,
                   magic_point: 0,
                   force: 0,
                   defense: 0,
                   dexterity: 0,
                   luck: 0)
      @hit_point = hit_point
      @magic_point = magic_point
      @force = force
      @defense = defense
      @dexterity = dexterity
      @luck = luck
    end


    def to_s
      ##IMPROV: I'm sure I can do that without a for loop...
      stat_names = self.instance_variables
      stat_increases = Hash.new()
      for name in stat_names do
        stat_increases[name] = self.instance_variable_get(name)
      end
      stat_increases
    end


    def +(other)
      all_attributes = self.instance_variables
      result = Hash.new() #store all attributes
      for attribute in all_attributes do
        attribute_name = attribute.to_s
        attribute_name[0]=""
        result[attribute_name.to_sym] = self.instance_variable_get(attribute.to_s) + 
                                        other.instance_variable_get(attribute.to_s)
      end
      Bonus.new(result)
    end
  end

  DEFAULT_BONUS = Bonus.new()
end
