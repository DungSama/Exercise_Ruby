=begin
	
Đã cho ncác số nguyên không âm , trong đó mỗi số đại diện cho một điểm tại tọa độ . 
các đường thẳng đứng được vẽ sao cho hai điểm cuối của đoạn thẳng tại và . 
Tìm hai đường thẳng cùng với trục x tạo thành một thùng chứa sao cho thùng chứa nhiều nước nhất.a1, a2, ..., an (i, ai)ni(i, ai)(i, 0)	

Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
=end
def max_area(height)
    left = 0 
    right = height.length - 1
    maxArea = 0    
    while (left < right)
        maxArea = [[height[left], height[right]].min * (right - left), maxArea].max
        height[left] > height[right] ? right -= 1 : left += 1
    end
    maxArea
end
p max_area([1,8,6,2,5,4,8,3,7])