=begin
	
Given a m x n grid filled with non-negative numbers, 
find a path from top left to bottom right, which minimizes the sum of all numbers along its path.
Note: You can only move either down or right at any point in time.	
Input: grid = [[1,3,1],[1,5,1],[4,2,1]]
Output: 7
=end
def min_path_sum(grid)
  row = grid.length
  col = grid.first.length
  
  (0...row).each do |i|
    (0...col).each do |j|
      next if (i == 0) && (j == 0)
      
      row_val = (i - 1) < 0 ? grid[i][j-1] : grid[i-1][j]
      col_val = (j - 1) < 0 ? grid[i-1][j]: grid[i][j-1]
      
      grid[i][j] += [row_val, col_val].min    
    end
  end
  
  grid.last.last  
end
p min_path_sum([[1,3,1],[1,5,1],[4,2,1]])