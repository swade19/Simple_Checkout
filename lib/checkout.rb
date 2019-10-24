class Checkout
  attr_reader :item_price, :customer_basket

  def initialize
    @item_price = 1.00
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

  def format_to_pound
    amount = @customer_basket.sum
    total = amount.to_f
    return "your bill is £#{total}"
  end
end
