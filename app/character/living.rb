module Character
    class Living
        attr_reader :birthday
        
        def initialize(birthday=Common::UNKNOWN)
            @birthday = birthday
        end


        def age(time_ingame)
            time_ingame - birthday
        end
    end
end




