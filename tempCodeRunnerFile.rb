
def stock_picker (prices)
  result_hash = {}
  highest_profit = 0
  prices.each do |purchase_price|
    prices.each do |sell_price|
      if purchase_price < sell_price && prices.find_index(purchase_price) < prices.find_index(sell_price)
         "#{purchase_price}: #{sell_price - purchase_price}"
         if highest_profit < sell_price - purchase_price
          highest_profit = sell_price - purchase_price 
          result_hash[:purchase] = {
            purchase_price: purchase_price,
            purchase_price_index: prices.find_index(purchase_price) 
          }
          result_hash[:sell] = {
          sell_price: sell_price,
          sell_price_index: prices.find_index(sell_price)
          }
        end
      end
    end  
  end  
  p result_hash
  return result_hash
end  

 stock_picker([600,900,17,3,6,9,15,8,6,700,10])

