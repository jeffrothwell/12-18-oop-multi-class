class Product

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = 0.13
  end

  def total_price
    @base_price * (@tax_rate + 1)
  end

  def base_price
    @base_price
  end

  def product_name
    @name
  end

end
