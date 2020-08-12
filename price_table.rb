require_relative "grocery_item"

module PriceTable
  
  List = {
    :milk => GroceryItem.new("milk", 3.97, 2.50, 2),
    :banana => GroceryItem.new("banana", 0.99),
    :apple => GroceryItem.new("apple", 0.89),
    :bread => GroceryItem.new("bread", 2.17, 2.00, 3)
  }
end



