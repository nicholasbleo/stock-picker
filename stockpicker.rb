stock_prices = [10, 6, 4, 7, 2, 3, 8, 9, 2, 1]

def stock_picker(stock_price_array)
    last_index = stock_price_array.length - 1
    current_pair = [0, 1]
    current_profit = 0
    for i in  0...last_index
        profits = stock_price_array.filter_map.with_index {|num, index| stock_price_array[index] - stock_price_array[i] if index > i}
        p profits
        if profits.max > current_profit
            current_profit = profits.max
            current_pair = [i, profits.index(profits.max) + i + 1]
        end
    end
    current_pair
end

p stock_picker(stock_prices)