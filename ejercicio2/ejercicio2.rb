class Producto 
	attr_reader :codigo, :nombre, :precio
	def initialize (codigo, nombre, precio)
		@codigo = codigo
		@nombre = nombre
		@precio = precio
	end
end


class Purchase

	def initialize
		@productos = []
	end

	def add (producto_nuevo)
		@productos << producto_nuevo 
	end

	def delete (producto_borrar)
		@productos.delete(producto_borrar)
	end

	def total
		total = 0
		@productos.each do |x|
			total += x.precio
		end
	end

	def apply_discount()
		
	end

end