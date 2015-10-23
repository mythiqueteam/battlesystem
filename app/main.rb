require_relative "stats/level.rb"
require_relative "stats/status.rb"
require_relative "inventory/equipment/equipment.rb"
require_relative "inventory/equipment/weapon/sword/basic_sword.rb"
require_relative "inventory/equipment/armor/plate/basic_plate.rb"
require_relative "battle/fighter.rb"
require_relative "character/monster/succube.rb"



#SETUP COMBAT
##create Zeyn
zeyn_level = Stats::Level.new(1)
zeyn_status = Stats::Status.new(hit_point: Stats::HitPoint.new(500,500),
                                force: Stats::Force.new(10),
                                defense: Stats::Defense.new(1))
zeyn_equip = Inventory::Equipment.new(Inventory::BasicSword.new(),
                                      Inventory::BasicPlate.new())


##create succube
succ_level = Stats::Level.new(1)
succ_status = Stats::Status.new(hit_point: Stats::HitPoint.new(50,50),
                                force: Stats::Force.new(5),
                                defense: Stats::Defense.new(2))
ennemy = Character::Monster::Succube.new(succ_level, succ_status)









def fighter_condition(fighter)
    puts "#{fighter} Condition:"
    puts "---------------"
    puts fighter.status.to_s
end


def round_status(hero, ennemy, round)
    puts ""
    puts ""
    puts "===== ROUND #{round} ====="

    fighter_condition(hero)
    fighter_condition(ennemy)
end

def welcome_message(hero, ennemy)
    puts ""
    puts "== Welcome in the Mythique Battle System =="
    puts ""
    puts "Character: #{hero}"
    puts "Opponent: #{ennemy}"
    puts ""
end

def create_hero()
    print "What's your name ? "
    name = gets.strip
    hero = Battle::Fighter.new(name, zeyn_level, zeyn_status, zeyn_equip)
end





hero = create_hero()
welcome_message()
round = 0 #round counter
while not ennemy.is_dead do
    round_status(hero, ennemy, round)
    user_decide(hero,ennemy)
    ennemy.attack(hero) #here we should put a function where ennemy IA chooses the best action. For the moment the ennemy attacks the hero no matter what

    round +=1
end