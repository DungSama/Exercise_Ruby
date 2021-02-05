=begin
	
rescue Given an integer rowIndex, return the rowIndexth row of the Pascal's triangle.

Notice that the row index starts from 0
Input: rowIndex = 3
Output: [1,3,3,1]

=end
def get_row(k)
  [p=1]+(1..k).map{|i|p=p*(k-i+1)/i}
end