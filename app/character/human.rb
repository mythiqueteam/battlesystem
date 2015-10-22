require_relative "./character.rb"

module Character
    class Human < Character::Living
        attr_reader :first_name, :last_name, :birthday
        
        def initialize(first_name, last_name, birthday=Common::UNKNOWN)
            @first_name = first_name
            @last_name = last_name
            @birthday = birthday
        end

        def to_s
            @first_name+" "+@last_name+" : "+@level.to_s
        end
    end
end


