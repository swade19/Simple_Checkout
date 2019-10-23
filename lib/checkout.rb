class Checkout
  attr_reader :item_price, :customer_basket

  def initialize
    @item_price = 1
    @customer_basket = []
  end

  def price_checker
    return @item_price
  end

  def scan_item(item_price)
    @customer_basket << @item_price
  end

  def total_purchase
    p @customer_basket.sum
  end
end
