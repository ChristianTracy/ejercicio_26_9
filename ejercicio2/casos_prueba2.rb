require_relative 'ejercicio2.rb' #Incluyo el archivo con el ejercicio(clases)

#INICIO DE PRUEBAS 
#PRUEBA 1----------------------------------
p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'

p = Purchase.new
p.add p1
p.add p2

p.total
# => 60
puts "------------"
# Descuento de 10% en tu compra si llevás algún martillo!
p.apply_discount do |purchase|
  hammers = purchase.products.collect { |product| product.code == '01' }
  purchase.total -= purchase.total * 0.1 if hammers.any?
end
puts "con Descuento"
p.total
# => 54.0

#PRUEBA 2---------------------------------

=begin
pur = Purchase.new
pro = Product.new('01','Martillo','50')
pro2 = Product.new('02','Clavo','1')
p pur
pur.add(pro)
p pur
pur.add(pro2)
p pur 
puts "....."
puts "..borro 1.."
pur.delete('01')
p pur
=end
