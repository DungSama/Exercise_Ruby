=begin
	
Given n non-negative integers representing the histogram's bar height where the width of each bar is 1, 
find the area of largest rectangle in the histogram.

Input: [2,1,5,6,2,3]
Output: 10
	
=end
def largest_rectangle_area(heights)
    return 0 if heights.size < 1
    max_area = heights[0]
    stack = []
    i = 0
    while i < heights.size
        if stack.empty? || heights[stack[-1]] <= heights[i]
            stack.push(i)
            i += 1
         else
            peek = stack.pop
            max_area = [max_area, heights[peek] * (stack.empty? ? i : i - stack[-1] - 1)].max
        end
    end
    while !stack.empty?
        peek = stack.pop
        max_area = [max_area, heights[peek] * (stack.empty? ? i : i - stack[-1] - 1)].max
    end
    max_area
end