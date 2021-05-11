def stock_picker(a)
    max_diff = -1
    best_sell = nil
    best_buy = nil

    # compare each element in array with its higher indexed elements
    for i in 0..(a.length-1)
        for j in (i+1)..(a.length-1)
            if a[j] - a[i] > max_diff
                max_diff = a[j] - a[i]
                best_buy  = a[i]
                best_sell = a[j]
            end
        end
    end
    puts "Best buy : Day - #{a.index(best_buy)}, Price #{best_buy}\nBest sell : Day - #{a.index(best_sell)}, Price #{best_sell}\nProfit : $#{best_sell} - $#{best_buy} = $#{max_diff}"
end

stock_picker([17,3,6,9,15,8,6,1,10])