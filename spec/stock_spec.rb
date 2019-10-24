require "stock"
describe Stock do
  let(:stock) { Stock.new }
  it "creates an instance of stock" do
    expect(stock).to be_instance_of(Stock)
  end
  it "has a place for stock to be stored" do
    expect(stock.stock_list).not_to be_empty
  end
end
