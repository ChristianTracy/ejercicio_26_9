require_relative 'Animal.rb'  #incluyo el archivo con la clase padre
#---------------------------------------
class Mamifero < Animal
end
#---------------------------------------
#---------------------------------------
class Hombre < Mamifero
	include caminar
	include nadar

	def hablar
		puts "HABLO"
	end
end
#---------------------------------------
class Perro < Mamifero
	include caminar

	def ladrar
		puts "LADRO"
	end
end
#---------------------------------------
class Ballena < Mamifero
	include nadar
end
#---------------------------------------