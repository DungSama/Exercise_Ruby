=begin
	
Given an integer array nums that may contain duplicates, return all possible subsets (the power set).

The solution set must not contain duplicate subsets. Return the solution in any order.


Example 1:

Input: nums = [1,2,2]
Output: [[],[1],[1,2],[1,2,2],[2],[2,2]]	
=end

def subsets_with_dup(nums)
  [].tap do |res|
    dfs(nums.sort, 0, [], res)
  end
end

def dfs(nums, index, subset, subsets)
  subsets << subset.dup

  for i in (index...nums.size)
    next if i > index && nums[i] == nums[i - 1]
    subset << nums[i]
    dfs(nums, i + 1, subset, subsets)
    subset.pop
  end
end

