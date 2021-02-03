=begin
	
Given an integer array nums of unique elements, return all possible subsets (the power set).

The solution set must not contain duplicate subsets. Return the solution in any order.

Input: nums = [1,2,3]
Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]	

=end
def subsets(nums)
    return [[]] if nums.empty?
    
    curr_num = nums.shift
    results = subsets(nums)
    results += results.each_with_object([]) do |sub_set, array|
       array << (sub_set + [curr_num])
    end
    results
end
p subsets([1,2,3])