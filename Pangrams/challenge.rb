def pangrams(s)
    # Write your code here
    alp = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    mn = s.downcase
    return alp.all? { |e| mn.include?(e)} ? 'pangram' : 'not pangram'
end