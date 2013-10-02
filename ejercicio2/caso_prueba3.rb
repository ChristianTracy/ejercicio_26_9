require_relative 'ejercicio2.rb' #Incluyo el archivo con el ejercicio(clases)

#INICIO DE PRUEBAS 
#PRUEBA 3----------------------------------
puts "---------------------CASOS DE PRUEBA-----------------------------"
puts "-----------------------------------------------------------------"
puts "PRUEBA 3: Si la lista de productos tiene más de 3 productos iguales, cada 3 paga 2"

p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
#Agrego mas de 3 productos al iguales
3.times do
  p.add p1
end
2.times do
  p.add p2
end

puts "Total despues de agregar los productos #{p.total}"

# de 3 paga 2
p.apply_discount do |purchase|
  h = Hash.new(0)
	purchase.products.each do |product|
    h[product] += 1
	end

  h.each do |obj, cant| 
    purchase.total -= cant / 3 * obj.price.to_f #divido por 3 para saber la cantidad de productos a restar
  end

end
puts "Total despues del descuento #{p.total}"