class Checkout
  attr_reader :item_price

  def initialize
    @item_price = 1
  end

  def price_checker
    return @item_price
  end
end
