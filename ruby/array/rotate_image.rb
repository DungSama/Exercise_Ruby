=begin
	
You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [[7,4,1],[8,5,2],[9,6,3]]

=end
def rotate(matrix)
    n = matrix.size

    n.times do |i|
       (i...n).step(1) do |j|
          matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j] 
       end
    end
    
    n.times do |i|
       (n/2).times do |j|
          matrix[i][j], matrix[i][n - j - 1] = matrix[i][n - j - 1], matrix[i][j]
       end
    end
end
p rotate([[1,2,3],[4,5,6],[7,8,9]])