require_relative '../Animal.rb'  #incluyo el archivo con la clase padre
#-------------------------
class Aves < Animal
  include Caminar
end
#-------------------------
#-------------------------
class Aguila < Aves
  def volar 
    puts "VUELO"
  end
end
#-------------------------
#-------------------------
class Pinguino < Aves
  include Nadar
end