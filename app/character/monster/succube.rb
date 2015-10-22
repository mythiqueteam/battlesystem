module Character  
    module Monster 
        class Succube < Character::Fighter
            attr_reader :status
            def initialize(level=Stats::DEFAULT_LEVEL, 
                           status=Stats::DEFAULT_STATUS)
                @name = "Succube"
                @level = Stats::Level.new(1)
                @status = status
            end


        end
    end
end