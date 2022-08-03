def birthdayCakeCandles(candles)
    # Write your code here
    m = candles.max
    candles.count { |c| c == m }
end