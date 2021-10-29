class Shop 
  attr_reader :prices

  def initialize
    @prices = { 
      "A" => 50,
      "B" => 30
    }
  end

  def checkout(sku)
    total = 0
    @prices.each do |item, value|
      if item == sku
        total += value
      end
    end
    total > 0 ? total : -1
  end
end