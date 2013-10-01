#INCLUYO LOS ARCHIVOS CON LAS CLASES--------
require_relative 'Anfibios/Anfibios.rb'
require_relative 'Aves/Aves.rb'
require_relative 'Mamiferos/Mamiferos.rb'
require_relative 'Peces/Peces.rb'
require_relative 'Reptiles/Reptiles.rb'

#INICIAR LOS CASOS DE PRUEBA
#PRUEBA CON HOMBRE
puts "----------PRIMERA PRUEBA-------------"
puts "Instancio un Hombre y le pido caminar:"
hm = Hombre.new
hm.caminar
puts "----------SEGUNDA PRUEBA-------------"
puts "Instancio otro Hombre y le pido hablar:"
hm2 = Hombre.new
hm2.hablar

#PRUEBA CON SAPO
puts "----------TERCERA PRUEBA-------------"
puts "Instancio un Sapo y le pido que salte:"
sa = Sapo.new
sa.saltar

#PRUEBA CON AGUILA
puts "----------CUARTA PRUEBA--------------"
puts "Instancio un Águila y le pido que vuele:"
ag = Aguila.new
ag.volar

#PRUEBA CON PERRO
puts "----------QUINTA PRUEBA--------------"
puts "Instancio un Perro y le pido que vuele (Error):"
pe = Perro.new
pe.volar
#FIN PRUEBA EJERCICIO 1