require_relative "price_table"
require_relative "cart"

class Bill
  attr_reader :total_amount, :saved_amount, :table

  def initialize items, counts
    @total_amount = 0
    @saved_amount = 0
  end
end