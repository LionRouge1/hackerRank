def countApplesAndOranges(s, t, a, b, apples, oranges)
    # Write your code here
    app = apples.map { |e| a + e }
    oran = oranges.map { |e| b + e }
    
    def counts arr, s, t
        counter = 0
        arr.each do |e|
            if e.between?(s,t)
                counter += 1
            end
        end
        counter
    end
    puts counts app, s, t
    puts counts oran, s, t
end