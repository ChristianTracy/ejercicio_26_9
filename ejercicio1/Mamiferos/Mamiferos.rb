require_relative '../Animal.rb'  #incluyo el archivo con la clase padre
#-------------------------
class Mamifero < Animal; end
#-------------------------
#-------------------------
class Hombre < Mamifero
  include Caminar
  include Nadar

  def hablar
    puts "HABLO"
  end
end
#-------------------------
#-------------------------
class Perro < Mamifero
  include Caminar

  def ladrar
    puts "LADRO"
  end
end
#-------------------------
#-------------------------
class Ballena < Mamifero
  include Nadar
end