require_relative "stats/level.rb"
require_relative "stats/status.rb"
require_relative "inventory/equipment/equipment.rb"
require_relative "inventory/equipment/weapon/sword/basic_sword.rb"
require_relative "inventory/equipment/armor/plate/basic_plate.rb"
require_relative "battle/fighter.rb"
require_relative "character/monster/succube.rb"



#SETUP COMBAT
def create_ennemy()
    succ_level = Stats::Level.new(1)
    succ_status = Stats::Status.new(hit_point: Stats::HitPoint.new(50,50),
                                    force: Stats::Force.new(15),
                                    defense: Stats::Defense.new(2))
    ennemy = Character::Monster::Succube.new(succ_level, succ_status)
end

def create_hero()
    print "What's your name ? "
    name = gets.strip
    zeyn_level = Stats::Level.new(1)
    zeyn_status = Stats::Status.new(hit_point: Stats::HitPoint.new(100,100),
                                force: Stats::Force.new(10),
                                defense: Stats::Defense.new(1))
    zeyn_equip = Inventory::Equipment.new(Inventory::BasicSword.new(),
                                      Inventory::BasicPlate.new())
    hero = Battle::Fighter.new(name, zeyn_level, zeyn_status, zeyn_equip)
end


#COMBAT STATUS
def welcome_message(hero, ennemy)
    puts ""
    puts "== Welcome in the Mythique Battle System =="
    puts ""
    puts "Character: #{hero}"
    puts "Opponent: #{ennemy}"
    puts ""
end

def fighter_condition(fighter)
    puts "#{fighter} Condition:"
    puts "---------------"
    puts fighter.effective_status.to_s
end


def round_status(hero, ennemy, round)
    puts ""
    puts ""
    puts "===== ROUND #{round} ====="

    fighter_condition(hero)
    fighter_condition(ennemy)
end





#ACTION IN COMBAT
def user_decide(hero, target)

    command_available = false
    puts "What do you want to do [Enter one of the command below]? "


    while not command_available
        puts hero.list_actions
        action = gets.strip

        if action == "attack"
            hero.attack(target)
            command_available = true
        elsif action == "pass"
            hero.pass()
            command_available = true
        else
            puts "Action #{action} is not available. Choose again:"
        end
    end
end





#COMBAT
hero = create_hero()
ennemy = create_ennemy()
welcome_message(hero, ennemy)
round = 0 #round counter
while not ennemy.is_dead do #should add condition hero is dead
    round_status(hero, ennemy, round)
    user_decide(hero, ennemy)
    ennemy.attack(hero) #here we should put a function where ennemy IA chooses the best action. For the moment the ennemy attacks the hero no matter what
    

    #FIXME: the ennemy attacks, but hero status is not updated. I think it is when I print the status, it resets because of the equipment

    round +=1
end