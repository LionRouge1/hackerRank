def birthday(s, d, m)
    # Write your code here
    counter = 0
    s.each_index do |i|
        if(s[(i+m) - 1])
            counter += 1 if s[i,m].sum == d
        end
    end
    counter
end
puts birthday([4], 4, 1)