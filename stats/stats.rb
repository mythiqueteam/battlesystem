require_relative "./level.rb"
require_relative "./force.rb"
require_relative "./defense.rb"
require_relative "./hit_point.rb"
require_relative "./magic_point.rb"

module Stats
    MIN_STAT_VALUE = 0
    MAX_STAT_VALUE = 255

    #HIT POINTS
    MIN_HP = 0
    MAX_HP = 9999

    #MAGIC POINTS
    MIN_MP = 0
    MAX_MP = 999

    #LEVEL
    MIN_LEVEL = 1
    MAX_LEVEL = 100

    #OTHER
    HP_UNIT = "HP"
    MP_UNIT = "MP"
    FORCE_UNIT = "FOR"
    DEFENSE_UNIT = "DEF"

    DEFAULT_FORCE = Stats::Force.new(1)
    DEFAULT_DEFENSE = Stats::Defense.new(1)
    DEFAULT_HIT_POINT = Stats::HitPoint.new(1, 1)
    DEFAULT_MAGIC_POINT = Stats::MagicPoint.new(0, 0)

    #ZERO STATUS
    STATUS_ZERO = Stats::Status.new(0)
    STATUS_ZERO.status.hit_point = 0
    STATUS_ZERO.status.magic_point = 0
    STATUS_ZERO.status.force = 0
    STATUS_ZERO.status.defense = 0

end



