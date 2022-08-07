def bonAppetit(bill, k, b)
    # Write your code here
    bill.delete_at(k)
    ba = bill.sum / 2
    rs = b - ba
    puts rs.zero? ? 'Bon Appetit' : rs
end

f = File.open('text.txt', 'r')
k = f.readline.split.last.to_i
bill = f.readline.split.map(&:to_i)
b = f.readline.to_i
bonAppetit(bill, k, b)
t = gets.text.txt
puts t