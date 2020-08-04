class GroceryItem 
  attr_reader :item, :mrp, :sale_price, :pack
  def initialize (item, mrp, sale_price=mrp, pack=1)
    @item = item
    @mrp = mrp
    @sale_price = sale_price
    @pack = pack
  end
end