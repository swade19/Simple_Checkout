require "checkout"

describe "checkout" do
  let(:item) { Checkout.new }

  it "can create instances of Checkout" do
    expect(item).to be_instance_of(Checkout)
  end
end
