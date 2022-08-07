def divisibleSumPairs(n, k, ar)
    # Write your code here
    comb = ar.combination(2).to_a
    counter = 0
    comb.each { |e| counter += 1 if (e.sum % k).zero? }
    counter
end