def stock_picker (prices)   # defines function  
  result_hash = {}   # creates hash variable which will be an output of this function
  profit = 0   # defines profit of our "purchase-sell" actions
  for i in (0..prices.length - 1)   # creates "for" loop which will be ran in range from 0 to array's last index
     for j in (0..prices.length - 1)    # creates nested "for" loop which will be ran in range from 0 to array's last index
        if prices[i] < prices[j] && prices.find_index(prices[i]) < prices.find_index(prices[j])   # defines conditions under which the code will be evaluated
          if prices[j] - prices[i] < profit   # condition under which the code won't be evaluated
            next   # skips current prices[j] item
          end    # if statement ends
          profit = prices[j] - prices[i]  # defines profit
          result_hash[:purchase] = {  # updates hash
            purchase_price: prices[i],  # updates hash
            purchase_price_index: prices.find_index(prices[i])  # updates hash
          }
          result_hash[:sell] = {  # updates hash
            sell_price: prices[j],  # updates hash
            sell_price_index: prices.find_index(prices[j])  # updates hash
          }
          result_hash[:total_profit] = profit  # updates hash
        end    # if statement ends
     end   # for j loop ends
  end   # for i loop ends 
  p result_hash   # prints eventual hash
  return result_hash   # returns eventual hash
end   # ends function

stock_picker([600,900,17,3,6,9,15,8,6,700,10])




# def stock_picker (prices)
#   result_hash = {}
#   highest_profit = 0
#   prices.each do |purchase_price|
#     prices.each do |sell_price|
#       if purchase_price < sell_price && prices.find_index(purchase_price) < prices.find_index(sell_price)
#          "#{purchase_price}: #{sell_price - purchase_price}"
#          if highest_profit < sell_price - purchase_price
#           highest_profit = sell_price - purchase_price 
#           result_hash[:purchase] = {
#             purchase_price: purchase_price,
#             purchase_price_index: prices.find_index(purchase_price) 
#           }
#           result_hash[:sell] = {
#           sell_price: sell_price,
#           sell_price_index: prices.find_index(sell_price)
#           }
#         end
#       end
#     end  
#   end  
#   p result_hash
#   return result_hash
# end  

#  stock_picker([600,900,17,3,6,9,15,8,6,700,10])



