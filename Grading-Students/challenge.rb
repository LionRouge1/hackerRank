def gradingStudents(grades)
    # Write your code here
    result = []
    grades.each do |e|
        ch = (e/5.0).ceil * 5
        if(ch < 40)
            result << e
            next
        end
        if (e % 5).zero?
            result << e
        elsif
            if (ch - e) < 3
                result << ch
            else
                result << e
            end
        end
    end
    result
end