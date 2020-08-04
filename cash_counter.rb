class Counter
 def take_order
    puts "Please enter your order seperated by comma."
    list_array = gets.chomp.gsub(/\s+/, "").split(",")

  end


end