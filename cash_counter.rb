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


end