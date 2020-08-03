class GroceryItem 
  def initialize (item, mrp, sale_price=0, pack=0)
    @item = item
    @mrp = mrp
    @sale_price = sale_price
    @pack = pack
  end
end