def marsExploration(s)
    # Write your code here
    rs = 0
    s.scan(/.{3}/).each do |m|
        m.split('').each_with_index { |e,i| rs += 1 unless e == 'SOS'[i]}
    end
    rs
end