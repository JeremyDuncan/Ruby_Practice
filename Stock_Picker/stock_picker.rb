# Author: Jeremy Duncan
# www.jeremy-duncan.com
# I added more flair to original assignment by added string output for buySellDays
# and profit from buying / selling stocks.

def stock_picker(stocks)
  minStockPrice = stocks[0]
  indexCount = 0

  stockProfit = 0
  buySellDays = [0, 0]

  stocks.each_with_index do |price, index|
    if price < minStockPrice
      minStockPrice = price
      indexCount = index
    end
    if price - minStockPrice > stockProfit
      stockProfit = price - minStockPrice
      buySellDays = [indexCount, index]
    end
  end
  p "Best day to buy is day number #{buySellDays[0] + 1}."
  p "The best day to sell is day number #{buySellDays[1] + 1}."
  p "Your profit would be $#{stockProfit} dollars."
end

stockPrices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

stock_picker(stockPrices)
