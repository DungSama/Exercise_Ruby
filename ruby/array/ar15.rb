=begin
	
Given a triangle array, return the minimum path sum from top to bottom.

For each step, you may move to an adjacent number of the row below. More formally, 

if you are on index i on the current row, you may move to either index i or index i + 1 on the next row.

Example 1:

Input: triangle = [[2],[3,4],[6,5,7],[4,1,8,3]]
Output: 11
Explanation: The triangle looks like:
   2
  3 4
 6 5 7
4 1 8 3
The minimum path sum from top to bottom is 2 + 3 + 5 + 1 = 11 (underlined above).
Example 2:

Input: triangle = [[-10]]
Output: -10
	
=end
def minimum_total(tr)
    return 0 if tr.empty?
    (1...tr.size).each do |row|
        prev = row - 1
        (0...tr[row].size).each do |cell|
            tmp = []
            tmp.push tr[prev][cell] if cell < tr[prev].size
            tmp.push tr[prev][cell-1] if cell-1 >= 0
            tr[row][cell] += tmp.min
        end
    end
    return tr.last.min
end