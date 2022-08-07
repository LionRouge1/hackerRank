def kangaroo(x1, v1, x2, v2)
    # Write your code here
    if x1 > x2
        if v1 >= v2
            return 'NO'
        end
    end
    if x2 > x1
        if v2 >= v1
            return 'NO'
        end
    end
    jump = (x2 - x1)/(v2 - v1).to_f
    return (jump % 1).zero? ? 'YES': 'NO'
end