require_relative "../stats/status.rb"
require_relative "../stats/stats.rb"
require_relative "../stats/level.rb"
require_relative "./monster.rb"
require_relative "./ennemy.rb"


module Ennemy    
    class Succube < Ennemy::Monster
        attr_reader :status
        def initialize(status)
            @name = "Succube"
            @level = Stats::Level.new(1)
            @status = status
        end

        def to_s
            @name+"("+@level.to_s+")"
        end
    end

end