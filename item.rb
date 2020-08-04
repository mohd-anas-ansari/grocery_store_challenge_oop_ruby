class Item
  attr_accessor :item, :quantity, :price

  def initialize (item, quantity)
    @item = item
    @quantity = quantity
    @price = 0
  end


end
