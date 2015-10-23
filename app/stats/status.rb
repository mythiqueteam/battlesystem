require_relative "./level.rb"
require_relative "./force.rb"
require_relative "./defense.rb"
require_relative "./hit_point.rb"
require_relative "./magic_point.rb"
require_relative "./dexterity.rb"
require_relative "./luck.rb"

module Stats

    class Status
        attr_accessor :hit_point, :magic_point, 
                      :force, :defense, :dexterity, :luck

        def initialize(hit_point: Stats::DEFAULT_HIT_POINT,
                       magic_point: Stats::DEFAULT_MAGIC_POINT,
                       force: Stats::DEFAULT_FORCE,
                       defense: Stats::DEFAULT_DEFENSE,
                       dexterity: Stats::DEFAULT_DEXTERITY,
                       luck: Stats::DEFAULT_LUCK)
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
            stat_values ||= []
            for name in stat_names do
                stat_values << self.instance_variable_get(name)
            end
            stat_values
        end


        def +(other)
            all_attributes = self.instance_variables
            result = Hash.new(0) #store all attributes
            for attribute in all_attributes do
                attribute_name = attribute.to_s
                attribute_name[0]=""
                result[attribute_name.to_sym] = self.instance_variable_get(attribute.to_s) + 
                                                other.instance_variable_get(attribute.to_s)
            end
            Status.new(result)
        end
    end

    DEFAULT_STATUS = Status.new()
end
