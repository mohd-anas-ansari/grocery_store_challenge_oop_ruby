require_relative "price_table"
require_relative "item"
require_relative "cart"
require_relative "bill"


class Counter 
  attr_accessor :counts

  def initialize
    @counts = Hash.new(0)
  end

  def take_order
    puts "Please enter your order seperated by comma."
    list_array = gets.chomp.gsub(/\s+/, "").split(",")

    # if Price Table includes every item
    generate_counts list_array
  end

  def generate_counts list_array
    @counts = list_array.tally
  end

  def generate_cart_and_bill
    cart = generate_cart 
    bill = cart.generate_bill @counts
    table = bill.table
    total_amount = bill.total_amount
    saved_amount = bill.saved_amount



    puts "\n"
    puts table
    puts "\n"

    puts  "Total price : $#{total_amount.round(2)}"
    puts "You saved $#{saved_amount.round(2)} today." 

  end

  def generate_cart 
    cart = Cart.new 
    @counts.each do | item, quantity| 
      cart.add_to_cart (Item.new(item, quantity))
    end
    return cart
  end

end



