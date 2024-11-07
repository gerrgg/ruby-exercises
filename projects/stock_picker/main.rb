def stock_picker(days)
  min_price = Float::INFINITY  # Start with an infinitely large value for the minimum price
  min_day = 0  # Track the day for the minimum price
  max_profit = 0
  buy_day = 0
  sell_day = 0

  days.each_with_index do |price, day|
    # If the current price is lower than the previous minimum price, update it
    if price < min_price
      min_price = price
      min_day = day
    end
    
    # Calculate potential profit if sold today
    potential_profit = price - min_price
    
    # If we have found a better profit, update the best profit and buy/sell days
    if potential_profit > max_profit
      max_profit = potential_profit
      buy_day = min_day
      sell_day = day
    end
  end

  # Output the result (the buy and sell days with the max profit)
  p [buy_day, sell_day]
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])  # Expected output: [1, 4]
stock_picker([15, 3, 6, 9, 15, 8, 6, 5, 1])   # Expected output: [1, 4]
