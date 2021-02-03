=begin
	
You are given an integer array nums sorted in ascending order (not necessarily distinct values), and an integer target.

Suppose that nums is rotated at some pivot unknown to you beforehand (i.e., [0,1,2,4,4,4,5,6,6,7] might become [4,5,6,6,7,0,1,2,4,4]).
 Exception => e

Input: nums = [2,5,6,0,0,1,2], target = 0
Output: true
	
=end
def search(nums, target)
  return nums.include?(target) if nums.size<4
  m=(nums.size-1)/2
  return true if nums[m]==target
  return search(nums[0..m-1], target)||search(nums[m+1..-1], target) if nums[m]<=nums[0]||nums[m]>=nums[-1] 
  return search(nums[m+1..-1], target) if nums[m] < target
end
