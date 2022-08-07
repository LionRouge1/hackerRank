def sockMerchant(n, ar)
    # Write your code here
    hash = ar.group_by { |e| e }.values.map { |i| i.size/2 }.sum
end