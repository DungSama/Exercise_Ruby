=begin
	
Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.

Input: 5
Output:
[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]	
=end
def generate(num_rows)
    pascal = []
    num_rows.times { |i| pascal << [1] * (i + 1) }
    (0...num_rows).each do |i|
        (1...i).each do |j|
            pascal[i][j] = pascal[i - 1][j - 1] + pascal[i - 1][j]
        end
    end
    pascal
end