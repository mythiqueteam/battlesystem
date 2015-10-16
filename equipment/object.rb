module Equipment
    DEFAULT_WEIGHT = 1
    class Object
        attr_reader :weight, :is_quest
        def initialize(name, weight=DEFAULT_WEIGHT, is_quest=false)
            @name = name
            @weight = weight
            @is_quest = is_quest
        end

        # force: bypass is_quest attribute, and force destruction of object
        def destroy(force=false)
            if @is_quest and not force
                raise SecurityError, "Cannot destroy quest object."
            else
                nil
            end
        end

        def to_s
            @name
        end
    end

end
