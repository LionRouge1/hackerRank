def dayOfProgrammer(year)
    # Write your code here
    return "26.09.#{year}" if year == 1918
    if (year % 4).zero?
        if(year % 100).zero? && year.between?(1918,2700)
            if(year % 400).zero?
                return "12.09.#{year}"
            end
        else
            return "12.09.#{year}"
        end
    end
    "13.09.#{year}"
end