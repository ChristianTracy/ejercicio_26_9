class Product 
	attr_reader :code, :name, :price

	def initialize (code, name, price)
		@code = code
		@name = name
		@price = price
	end
end

#-----------------------------------------------------
class Purchase
	attr_reader:products

	def initialize
		@products = []
	end

	def add (new_product)
		@products << new_product 
	end

	def delete (a_product)
		@products.delete(a_product)
	end

	def total
		total = 0
		@products.each do |x|
			total += x.price.to_i
		end
		puts total
	end

	def apply_discount()
		yield self
	end
end
