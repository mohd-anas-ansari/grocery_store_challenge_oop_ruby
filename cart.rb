

require_relative "bill"


class Cart
  attr_reader :items
  def initialize
    @items = []
  end

  def add_to_cart item
    @items << item
  end

  def generate_bill counts
    bill = Bill.new(@items, counts)
    return bill
  end

 
end