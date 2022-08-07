def migratoryBirds(arr)
    # Write your code here
    types = { 1 => arr.count(1), 2 => arr.count(2), 3 => arr.count(3), 4 => arr.count(4), 5 => arr.count(5) }
    fre = types.select { |i,e| e == types.values.max}
    fre.keys.first
end