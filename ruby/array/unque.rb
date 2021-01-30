=begin
A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

The robot can only move either down or right at any point in time. 
The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

How many possible unique paths are there?

Input: m = 3, n = 7
Output: 28
=end
def unique_paths(m, n)
  if m > n
    t = m; m = n; n = t;
  end

  return 1 if m == 1

  sum = m-1+n-1
  k   = m-1
  res = 1

  1.upto(k) do |i|
    res = res*(sum-k+i)/i
  end

  res
end
p unique_paths(3,7)
