require_relative '../Animal.rb' #incluyo el archivo con la clase padre
#-------------------------
class Anfibios < Animal
include Nadar

def saltar
  puts "SALTO"
end

end		
#-------------------------
#-------------------------
class Sapo < Anfibios; end