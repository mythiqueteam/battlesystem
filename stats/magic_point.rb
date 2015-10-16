require_relative "../common/value.rb"
require_relative "../common/unit.rb"

module Stats
    MIN_MP = 0
    MAX_MP = 999
    DEFAULT_MAGIC_POINT = MagicPoint.new(0, 0)
    
    class MagicPoint < Common::Value 
        def initialize(start, max)
            @min = Stats::MIN_HP 
            @value = start
            @unit = Common::MP_UNIT
            @max = max

            #sanity check
            @max = Common::ensure_range(@max, Stats::MIN_MP, Stats::MAX_MP)
            @value = Common::ensure_range(@value, @min, @max) ##problem
        end




        def +(a)
            if a.is_a?(Numeric)
                @value += a
                @value = Common::ensure_range(@value, @min, @max)
            elsif a.is_a?(Object)
                Common::check_unit(self, a)
                @value += a.value
                @max = [@max,a.max].max #new max is max(a,b)
            else
                raise TypeError, "You are trying to sum two objects of different kinds."
            end
            MagicPoint.new(@value,@max)
        end
    end


    # Compute how many hit points a character should have
    def self.how_many_magicpoints(level)
        initial_mp = 10*level.value
        Stats::MagicPoint.new(initial_mp, initial_mp)
    end
end
