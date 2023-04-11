class Shop 

  def initialize
    @prices = { 
      "A" => 50,
      "B" => 30,
      "C" => 20,
      "D" => 15
    }
    @deduction = 0
  end

  def checkout(skus)

    return -1 unless skus.is_a?(String)
    return -1 unless skus == skus.upcase 
    return -1 if skus.include?("-")
    
    deal_A(skus.count("A"))
    deal_B(skus.count("B"))

    total = 0
    skus.split("").each do |sku|
      @prices.each { |item, value| total += value if item == sku }
    end
    total - @deduction
  end

  private 

  def deal_A(total_A)
    @deduction += (total_A / 3) * 20 if total_A % 3 == 0
  end

  def deal_B(total_B)
    @deduction += (total_B / 2) * 15 if total_B % 2 == 0
  end
end