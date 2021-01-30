=begin
	
Cho một mảng các số nguyên được numssắp xếp theo thứ tự tăng dần
hãy tìm vị trí bắt đầu và kết thúc của một targetgiá trị nhất định .
Nếu targetkhông tìm thấy trong mảng, hãy trả về [-1, -1].	

Input: nums = [5,7,7,8,8,10], target = 8
Output: [3,4]

=end
def search_range(nums, target)
    pos = [-1, -1]
    stack = []
    nums.each_with_index do |num, i|
        if num == target
            if stack.size == 0
                stack = [i, i]
            elsif stack.size == 2
                stack.pop
                stack << i
            end
        end
    end
    stack.size == 0 ? pos : stack
end
p search_range( [5,7,7,8,8,10],8)