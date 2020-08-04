require_relative "price_table"


class Item
  attr_accessor :item, :quantity, :price

  def initialize (item, quantity)
    @item = item
    @quantity = quantity
    @price = calculate_price
  end

  def calculate_price
    grocery_item = PriceTable::List[@item.to_sym]

    generate_price_after_sale_discount(grocery_item.pack, grocery_item.sale_price, grocery_item.mrp)
  end

  def generate_price_after_sale_discount pack, sale_price, mrp
    if @quantity < pack
      price_after_discount = @quantity * mrp
      return price_after_discount
    end

    if @quantity >= pack
      price_after_discount = ((@quantity / pack) * (sale_price * pack) ) + (mrp * (@quantity % pack))

      return price_after_discount
    end
  end
end
