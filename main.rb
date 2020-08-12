require_relative "cash_counter"

counter = Counter.new

#take order list from user
counter.take_order

# generate cart and bil
counter.generate_cart_and_bill