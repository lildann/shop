require "shop"

describe Shop do
  
  it "should return 50 for 'A'" do 
    shop = Shop.new
    expect(shop.checkout('A')).to eq(50)
  end

  xit "should return -1 if inout invalid" do
    shop = Shop.new
    expect(shop.checkout('aBc')).to eq(-1)
  end

end