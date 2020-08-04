require_relative "cart"


class Counter
    attr_accessor :counts

  def initialize
    @counts = Hash.new(0)
  end

 def take_order
    puts "Please enter your order seperated by comma."
    list_array = gets.chomp.gsub(/\s+/, "").split(",")

    generate_counts list_array
  end

  def generate_counts list_array
    @counts = list_array.tally
  end

  def generate_cart 
    cart = Cart.new 
    @counts.each do | item, quantity| 
      cart.add_to_cart (Item.new(item, quantity))
    end
    return cart
  end


end