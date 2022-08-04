def staircase(n)
    # Write your code here
    (1..n).each { |e| puts ' '*(n-e) + '#'*e}
end