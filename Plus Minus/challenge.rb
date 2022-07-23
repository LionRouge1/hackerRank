def plusMinus(arr)
    # Write your code here
    po = (arr.select { |e| e > 0}).count / arr.count.to_f
    ne = (arr.select { |e| e < 0}).count / arr.count.to_f
    ze = (arr.select { |e| e.zero? }).count / arr.count.to_f
    puts po.round(6)
    puts ne.round(6)
    puts ze.round(6)
end