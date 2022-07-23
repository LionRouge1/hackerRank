#!/usr/bin/ruby
# def diagonalDifference(arr)
#     # Write your code here
#     l = 0
#     r = -1
#     l_r = 0
#     r_l = 0
#     arr.each do |e|
#         l_r += e[l]
#         l += 1
#         r_l += e[r]
#         r -= 1
#     end
    
#     (l_r - r_l).abs
# end

require 'matrix'

def diagonalDifference(arr)
    # Write your code here
    l_r = Matrix.rows(arr).tr
    r_l = Matrix.rows(arr.map(&:reverse)).tr
    
    (l_r - r_l).abs
end

puts diagonalDifference([[1,2,3],[4,5,6],[9,8,9]])