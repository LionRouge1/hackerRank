def timeConversion(s)
    # Write your code here
    s.match(/(^.{2})(.*)(.{2})/) do
        return "00#{$2}" if $3 == 'AM' && $1 == '12'
        ($3 == 'PM' && $1.to_i < 12 )?"%.i#{$2}" %($1.to_i + 12): "#{$1 + $2}"
    end
end