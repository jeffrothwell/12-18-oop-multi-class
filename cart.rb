require "./product.rb"
require "pp"

class Cart

  def initialize
    @contents = []
  end

  def add_product(product)
    @contents << product
  end

  def remove_product(product)
    @contents.delete(product)
  end

  def subtotal  #before tax total
    sum = 0
    @contents.each do |product|
      sum += product.base_price
    end
    return sum
  end

  def checkout_total
    sum = 0
    @contents.each do |product|
      sum += product.total_price
    end
    return sum
  end
end

multi_beast = Product.new("Multi-Beast", 86.70)
sloth = Product.new("The Sloth", 66.66)
possum = Product.new("Possum", 2.99)

my_cart = Cart.new

puts "===\nAdd a sloth and multi_beast to the cart\n==="
my_cart.add_product(sloth)
my_cart.add_product(multi_beast)
pp my_cart

puts "===\nWhat's the before-tax subtotal of my cart?\n==="
pp my_cart.subtotal

puts "===\nNow let's take out the sloth and add a possum\n==="
my_cart.remove_product(sloth)
my_cart.add_product(possum)
puts "what's in there now?\n==="
pp my_cart
puts "===\nwhat's the new subtotal?\n==="
pp my_cart.subtotal
puts "===\nwhat about the after-tax total?\n==="
pp my_cart.checkout_total
