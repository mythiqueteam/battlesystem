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
    end

    DEFAULT_STATUS = Status.new()
end