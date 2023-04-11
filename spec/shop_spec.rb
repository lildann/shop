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

  it "should return -1 if input not a string" do
    expect(shop.checkout(18)).to eq(-1)
  end

  it "should return -1 if grammatical character is included" do
    expect(shop.checkout('A-B')).to eq(-1)
  end

  it "should return a total for more than one sku" do
    expect(shop.checkout('AA')).to eq(100)
  end

  it "should return a deal - 3A for 130" do
    expect(shop.checkout('AAA')).to eq(130)
  end

  it "should return a deal - 2B for 90" do
    expect(shop.checkout('BB')).to eq(45)
  end

  it "should return a complex amount" do
    expect(shop.checkout('AABACD')).to eq(195)
  end


end