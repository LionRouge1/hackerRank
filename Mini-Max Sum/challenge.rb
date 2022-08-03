def miniMaxSum(arr)
    # Write your code here
    sums = []
    arr.each_with_index do |n,i|
        newr = Array.new arr
        newr.delete_at(i)
        sums << newr.sum
    end 
    puts "#{sums.min} #{sums.max}"
end