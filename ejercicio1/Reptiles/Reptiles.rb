require_relative 'Animal.rb'  #incluyo el archivo con la clase padre

class Reptiles < Animal
end
#-------------------------------
#-------------------------------
class Cocodrilo < Reptiles
	include caminar
	include nadar
end
#-------------------------------
class Boa < Reptiles	
	include desplazarse

	def constriccion
		puts "HAGO PRESIÓN"
	end
end
#-------------------------------
class Cobra < Reptiles
	include desplazarse

	def morder
		puts "MORDER"
	end
end
#-------------------------------