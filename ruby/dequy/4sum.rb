=begin
	
Given an array nums of n integers and an integer target, are there elements a, b, c, and d in nums such that a + b + c + d = target? 

Find all unique quadruplets in the array which gives the sum of target.

Notice that the solution set must not contain duplicate quadruplets.

Example 1:

Input: nums = [1,0,-1,0,-2,2], target = 0
Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]	

=end
def four_sum(nums, target)
  length = nums.length - 1
  return [] if length < 3
  res = []
  nums.sort!
  
  (0..length-3).each do |i|
    next if (nums[i] == nums[i-1]) && (i > 0)
    
    (i+1..length-2).each do |j|
      l = j + 1
      k = length

      break if nums[i] + nums[j] + nums[l] + nums[l+1] > target
      next if nums[i] + nums[j] + nums[k-1] + nums[k] < target
      next if (nums[j] == nums[j-1]) && (j > i + 1)

      while l < k
        tmp = nums[i] + nums[j] + nums[k] + nums[l]
        
        if tmp == target
          res << [nums[i], nums[j], nums[k], nums[l]]
          l += 1
          k -= 1
          
          l += 1 while nums[l] == nums[l-1]
          k -= 1 while nums[k] == nums[k+1]
        elsif tmp > target
          k -= 1
        else
          l += 1
        end
      end
    end
  end
      
  res
end
p four_sum([1,0,-1,0,-2,2],0)