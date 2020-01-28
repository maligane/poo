class Player
  attr_accessor :name , :life_points 

def initialize(name, life_points = 10)
 @name = name
 @life_points = life_points
 end 

def show_state 
puts "Voici le niveau de vie #{life_points}"
  return @life_points
end 

def gets_damage(damage)
  @life_points = @life_points - damage
  if @life_points <= 0
puts "le joueur #{@name} a été tué"
  end 
end 

def attacks(player)
puts "le joeur #{@name} attaque le joueur #{player.name}"
damage = compute_damage 
player.gets_damage(damage) 
puts "il lui inflige #{damage} points de dommages"
end 

def compute_damage
  return rand(1..6)
end 



 binding.pry 

end 