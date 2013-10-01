require_relative '../Animal.rb' #incluyo el archivo con la clase padre
#-------------------------
class Peces
  include Nadar
end
#-------------------------
#-------------------------
class Tiburon < Peces; end