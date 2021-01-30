#Cho một mảng numsgồm n số nguyên và một số nguyên target, 
#hãy tìm ba số nguyên nums sao cho tổng gần nhất với  target. Trả về tổng của ba số nguyên
#Input: nums = [-1,2,1,-4], target = 1
#Output: 2
#Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
def three_sum_closest(nums, target)
  nums.sort!
  
  length = nums.length - 1
  diff = 1.0 / 0
  tmp_target = 0
  
  (0..length-2).each do |i|
    j = i + 1
    k = length
    
    while j < k
      tmp = nums[i] + nums[j] + nums[k]
      return target if tmp == target
      
      if tmp < target
        j += 1
      else
        k -= 1
      end
        
      if (tmp - target).abs < diff      
        tmp_target = tmp 
        diff = (tmp - target).abs
      end
    end
  end
  
  tmp_target
end
p three_sum_closest([-1,2,1,-4],1)