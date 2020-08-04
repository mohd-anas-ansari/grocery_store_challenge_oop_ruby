require_relative "price_table"
require_relative "cart"
require "terminal-table"

class Bill
  attr_reader :total_amount, :saved_amount, :table

  def initialize items, counts
    @total_amount = calculate_total_amount items
    @saved_amount = calculate_saved_amount counts
    @table = generate_table items
  end

  def calculate_total_amount items
    sum = 0
    items.each do |item|
      sum += item.price
    end
  
    return sum
  end

  def calculate_saved_amount counts
    grocery_item_list = PriceTable::List
    total_mrp = 0

    counts.each do |item, quantity|
      grocery_item = grocery_item_list[item.to_sym]
      total_mrp += grocery_item.mrp * quantity
    end

    saved_amount = total_mrp - @total_amount

    return saved_amount
  end

  def generate_table items
    data_for_table = []
    for item in items do 
    data_for_table << [item.item.capitalize(), item.quantity, "$#{item.price}"]
    end

    table = Terminal::Table.new :headings => ['Item', 'Quantity', 'Price'], :rows => data_for_table, :style => {:width => 40, :border_x => "-", :border_i => "-",:border_top => false, :border_bottom => false, :border_y => ""}

    return table
  end
end



