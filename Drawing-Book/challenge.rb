def pageCount(n, p)
    # Write your code here
    return 0 if p ==n || p == 1
    rs = (n - p)/2
    if p <= (n/2)
        p.even? ? rs = p/2 : rs = (p-1)/2
    else
        if p.even?
            rs = (n - (p+1))/2 if n.odd?
        else
            rs = (n - (p - 1))/2 if n.even?
        end
    end
    rs
end