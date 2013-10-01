require_relative '../Animal.rb'  #incluyo el archivo con la clase padre
#-------------------------
class Reptiles < Animal; end
#-------------------------
#-------------------------
class Cocodrilo < Reptiles
  include Caminar
  include Nadar
end
#-------------------------
#-------------------------
class Boa < Reptiles
  include Desplazarse

  def constriccion
    puts "HAGO PRESIÓN"
  end
end
#-------------------------
#-------------------------
class Cobra < Reptiles
  include Desplazarse

  def morder
    puts "MORDER"
  end
end