require_relative "price_table"
require_relative "cart"

class Bill
  attr_reader :total_amount, :saved_amount, :table

  def initialize items, counts
    @total_amount = calculate_total_amount items
    # @saved_amount = calculate_saved_amount counts

  end


  def calculate_total_amount items
    sum = 0
    items.each do |item|
      sum += item.price
    end
  
    return sum
  end
end