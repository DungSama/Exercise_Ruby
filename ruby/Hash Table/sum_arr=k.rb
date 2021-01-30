=begin
	
Cho một mảng các số nguyên numsvà một số nguyên k, trả về tổng số mảng con liên tục có tổng bằngk .

Đầu vào: nums = [1,1,1], k = 2
Đầu ra: 2	
=end
def subarray_sum(nums, k)
  hash = Hash.new(0)
  hash[0] = 1
  count = sum = 0
  nums.each do |num|
    sum += num
    count += hash[sum - k]
    hash[sum] += 1
  end
  count
end