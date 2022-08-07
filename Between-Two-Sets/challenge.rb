def getTotalX(a, b, c = 0, s = a.max)
    # Write your code here
    return c if s > b.min
    if(a.all? { |e| (s % e).zero? } && b.all? { |e| (e % s).zero? })
        c += 1
    end
    s +=1
    getTotalX(a, b, c, s)
end