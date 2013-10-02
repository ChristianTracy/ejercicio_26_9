require_relative 'ejercicio2.rb' #Incluyo el archivo con el ejercicio(clases)

#INICIO DE PRUEBAS 
#PRUEBA 1----------------------------------
puts "---------------------CASOS DE PRUEBA-----------------------------"
puts "-----------------------------------------------------------------"
puts "PRUEBA 1: Descuento de 10% en tu compra si llevás algún martillo!"

p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2

puts "Total despues de agregar dos productos #{p.total}"
# => 60

# Descuento de 10% en tu compra si llevás algún martillo!
p.apply_discount do |purchase|
  hammers = purchase.products.collect { |product| product.code == '01' }
  purchase.total -= purchase.total * 0.1 if hammers.any?
end

puts "Total despues del descuento #{p.total}"
# => 54.0



