class Product 
  attr_reader :code, :name, :price

  def initialize (code, name, price)
    @code = code
    @name = name
    @price = price
  end
end
#-----------------------------------------------------
#-----------------------------------------------------
class Purchase
  attr_reader :products
  attr_accessor :total

  def initialize
    @products = []
    @total = 0
  end

  def add (new_product)
    @products << new_product
    @total = @total + new_product.price.to_f #acumulo el precio del nuevo producto
  end

  def delete (a_product)
    @total = @total - a_product.price.to_f
    @products.delete(a_product)
  end

  def apply_discount
    yield self
  end

end