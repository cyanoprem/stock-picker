
def stock_picker (daily_prices)
    min_day = 0
    max_day = 0
    max_value = 0
    #Using combination method
    daily_prices.combination(2) do |combination| 
        if (combination[0] < combination[1]) && (daily_prices.index(combination[0]) < daily_prices.index(combination[1]))
            if max_value < combination[1] - combination[0]  #Finding maximum profit
                max_value = combination[1] - combination[0]
                min_day = daily_prices.index(combination[0])
                max_day = daily_prices.index(combination[1])
            end
        end
    end
    p [min_day, max_day]
end


#Define stock prices and calling the method
daily_prices = [17,3,6,9,15,8,6,1,10]
stock_picker (daily_prices)