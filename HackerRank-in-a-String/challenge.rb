def hackerrankInString(s)
    # Write your code here
    f = 'hackerrank'
    return 'NO' if s.size < f.size
    f.each_char do |m|
        if(s.include?(m))
            p = s.index(m)
            s.slice!(0..p)
        else
            return 'NO'
        end
    end
    return 'YES'
end