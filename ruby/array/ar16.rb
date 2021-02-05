=begin
	
Cho một mảng số nguyên  nums, hãy tìm mảng con liền kề trong một mảng (chứa ít nhất một số) có tích lớn nhất.

Ví dụ 1:

Đầu vào: [2,3, -2,4]
Đầu ra:  6
Giải thích:  [2,3] có tích 6 lớn nhất.
	
=end
def max_product(nums)
    min = max = 1
    best = nums[0]
    nums.each { |n|
        min, max = [n, min*n, max*n].minmax
        best = [best, max].max
    }
    best
end