require_relative "../common/unit.rb"
require_relative "./equipment.rb"
require_relative "./weight.rb"

module Equipment

    class Object
        attr_reader :weight, :is_quest
        def initialize(name, weight=DEFAULT_WEIGHT, 
                       is_quest=false,
                       type=Common::UNKNOWN)
            @name = name
            @weight = weight
            @is_quest = is_quest
            @type = type #sword, potion, etc (for sort)
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
