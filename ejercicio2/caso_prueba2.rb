require_relative 'ejercicio2.rb' #Incluyo el archivo con el ejercicio(clases)

#INICIO DE PRUEBAS 
#PRUEBA 2----------------------------------
puts "---------------------CASOS DE PRUEBA-----------------------------"
puts "-----------------------------------------------------------------"
puts "PRUEBA 2: Si la lista de productos tiene más de 10 productos, se cobra el 20% menos"

p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
#Agrego mas de 10 productos al "Purchase"
p.add p1
12.times do
  p.add p2
end

puts "Total despues de agregar los productos #{p.total}"

# 20% menos
p.apply_discount do |purchase|
    purchase.total -= purchase.total * 0.2 if purchase.products.count > 10
end

puts "Total despues del descuento #{p.total}"

