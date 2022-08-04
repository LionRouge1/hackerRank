# def plusMinus(arr)
#     # Write your code here
#     po = (arr.select { |e| e > 0}).count / arr.count.to_f
#     ne = (arr.select { |e| e < 0}).count / arr.count.to_f
#     ze = (arr.select { |e| e.zero? }).count / arr.count.to_f
#     puts po.round(6)
#     puts ne.round(6)
#     puts ze.round(6)
# end

def plusMinus(arr)
    # Write your code here
    po = (arr.count { |e| e > 0}) / arr.count.to_f
    ne = (arr.count { |e| e < 0}) / arr.count.to_f
    ze = (arr.count { |e| e.zero? }) / arr.count.to_f
    puts po.round(6)
    puts ne.round(6)
    puts ze.round(6)
end

plusMinus([-1,-1,0,1,1])