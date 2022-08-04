require 'benchmark'
require 'time'

def weightedUniformStrings(s, queries)  
    # Write your code here
    alp = 'abcdefghijklmnopqrstuvwxyz'
    nt = 1
    pt = 0
    h = []
    s_arr = s.chars
    s_arr.each_with_index do |e, i|
        tr = s_arr[pt, nt]
        h << (alp.index(tr.first) + 1) * tr.count
        if(e == s[i + 1])
            nt += 1
        else
            nt = 1
            pt = i + 1
        end
    end
    queries.map { |e| h.include?(e) ? 'Yes' : 'No'}
    # def mapt queries, h, i = 0
    #     return queries if i >= queries.count
    #     if h.include? queries[i]
    #         queries[i] = 'Yes'
    #     else
    #         queries[i] = 'No'
    #     end
    #     mapt queries, h, i += 1
    # end
    # mapt queries, h
end

f = File.new('test.txt', 'r')
text = f.readline.chomp
queries = f.read.split(' ')
puts weightedUniformStrings('abccdde', [6,1,3,12,5,9,10])
