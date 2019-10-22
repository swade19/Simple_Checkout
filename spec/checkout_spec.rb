require "checkout"

describe "checkout" do
  let(:checkout) { Checkout.new }

  it "can create instances of Checkout" do
    expect(checkout).to be_instance_of(Checkout)
  end
  it "has an item priced at 1" do
    expect(checkout.item_price).to eq 1
  end
  it "lets the customer know the price of the item" do
    expect(checkout.price_checker).to eq 1
  end

  it "has an array of items the customer is buying" do
    expect(checkout.customer_purchases).to be_a(Array)
  end
  it "can add items into the customer purchases list" do
    checkout.buy_item
    expect(checkout.customer_purchases.length).to eq 1
  end
end
