=begin
	
Cho một mảng số nguyên nums, hãy tìm mảng con liền kề (chứa ít nhất một số) có tổng lớn nhất và trả về tổng của nó .

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
	
=end
def max_sub_array(nums)
    arr = Array.new(0)
    arr[0] = nums[0]
    max_sum = arr[0]
    
    nums[1..-1].each_with_index do |num, idx|
        m = [num, num + arr[idx - 1]].max
        arr[idx] = m
        max_sum = [max_sum, m].max
    end
    
    max_sum
end
p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])