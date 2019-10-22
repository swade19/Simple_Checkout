class Checkout
  attr_reader :item_price, :customer_purchases

  def initialize
    @item_price = 1
    @customer_purchases = []
  end

  def price_checker
    return @item_price
  end
end
