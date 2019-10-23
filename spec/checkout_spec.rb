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
    expect(checkout.customer_basket).to be_a(Array)
  end
  it "allowes customers to scan items into a basket" do
    checkout.scan_item(@item_price)
    expect(checkout.customer_basket.length).to eq 1
  end
  it "can add up the items in customer_purchases" do
    checkout.scan_item(@item_price)
    checkout.scan_item(@item_price)
    expect(checkout.total_purchase).to eq 2
  end

  it "formats the price into pounds and pence" do 
  checkout.scan_item(@item_price)
  expect(checkout.format_to_pound).to eq "your bill is £1.00"
  end 
end
