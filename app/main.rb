require_relative "stats/level.rb"
require_relative "stats/status.rb"
require_relative "inventory/equipment/equipment.rb"
require_relative "inventory/equipment/weapon/sword/basic_sword.rb"
require_relative "inventory/equipment/armor/plate/basic_plate.rb"
require_relative "battle/fighter.rb"
require_relative "character/monster/succube.rb"

##create Zeyn
zeyn_level = Stats::Level.new(1)
zeyn_status = Stats::Status.new(Stats::HitPoint.new(500,500),
                                Stats::MagicPoint.new(10,10),
                                Stats::Force.new(10),
                                Stats::Defense.new(1))
zeyn_equip = Inventory::Equipment.new(Inventory::BasicSword.new(),
                                      Inventory::BasicPlate.new())

zeyn = Battle::Fighter.new("Zeyn", zeyn_level, zeyn_status, zeyn_equip)
##zeyn has total force = 11


##create succube
succ_level = Stats::Level.new(1)
succ_status = Stats::Status.new(Stats::HitPoint.new(200,200),
                                Stats::MagicPoint.new(0,0),
                                Stats::Force.new(5),
                                Stats::Defense.new(2))
ennemy = Character::Monster::Succube.new(succ_level, succ_status)
##ennemy has total defense = 2

zeyn.attack(ennemy)
puts ennemy.status.hit_point
