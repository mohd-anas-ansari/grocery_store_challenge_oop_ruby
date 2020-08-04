class Counter
    attr_accessor :counts

  def initialize
    @counts = Hash.new(0)
  end
  
 def take_order
    puts "Please enter your order seperated by comma."
    list_array = gets.chomp.gsub(/\s+/, "").split(",")

  end


end