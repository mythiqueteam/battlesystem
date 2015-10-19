module Class
    class Magician < Class::Job
        def initialize()
            @name = "magician"
            @status.hit_point = -10
            @status.magic_point = 10
            @status.force = 0
            @status.defense = -1
        end
    end

end