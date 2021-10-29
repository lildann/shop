require "shop"

describe Shop do
  
  let(:shop) { Shop.new }

  it "should return 50 for 'A'" do 
    expect(shop.checkout('A')).to eq(50)
  end

  it "should return 30 for 'B'" do
    expect(shop.checkout('B')).to eq(30)
  end

  it "should return -1 if input invalid" do
    expect(shop.checkout('aBc')).to eq(-1)
  end

end