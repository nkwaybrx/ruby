

# def stock_picker (prices)
#   lowest_price = prices[0]
#   purchase_price = prices.map do |price|
#     if (lowest_price > price)
#       lowest_price = price
#     end  
#   end 
#   sell_array = prices
#   highest_price = prices[0]
#   sell_price = sell_array.map do |price|
#     # p price
#     if prices.find_index(lowest_price) > prices.find_index(highest_price)
#       sell_array.delete(price)
#     elsif highest_price < price 
#       highest_price = price
#     end  
#   end 
#   # p prices.find_index(lowest_price)
#   # p lowest_price
#   return highest_price
# end  


# p stock_picker([17,3,6,9,15,8,6,1,10])



def stock_picker (prices)
  lowest_price = prices[0]
  purchase_price = prices.map do |price|
    if (lowest_price > price)
      lowest_price = price
    end  
  end 

end  


p stock_picker([17,3,6,9,15,8,6,1,10])

p [17,3,6,9,15,8,6,1,10].delete_at(1..3)


# find smallest
# create clone of a prices array and delete every item which index is smaller than index of smallest
# find highest
# find profit (highest - smallest)
# create clone of a prices array and delete every item which index is equal to or higher than index of smallest
# find smallest and highest there
# find profit (highest - smallest)
# compare profits by the highest amount