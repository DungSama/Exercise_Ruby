=begin
	
Given a sorted array nums, remove the duplicates in-place such that duplicates appeared at most twice and return the new length.

Do not allocate extra space for another array; you must do this by modifying the input array in-place with O(1) extra memory.

Input: nums = [1,1,1,2,2,3]
Output: 5, nums = [1,1,2,2,3]

=end
def remove_duplicates(a)
  (0...a.length).each do |j|
    a[j] = nil if a[j] == a[j+1] && a[j+1] == a[j+2]
  end
  a.compact!
  a.length
end
p remove_duplicates([1,1,1,2,2,2,3,3,4])
