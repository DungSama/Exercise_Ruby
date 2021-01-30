=begin
	
Cho một mảng các số nguyên không âm nums, ban đầu bạn được định vị ở chỉ mục đầu tiên của mảng.

Mỗi phần tử trong mảng đại diện cho độ dài bước nhảy tối đa của bạn tại vị trí đó.

Xác định xem bạn có thể đạt đến chỉ số cuối cùng hay không.


Đầu vào: nums = [2,3,1,1,4]
Đầu ra: true	
=end
def can_jump(nums)
  return true if nums.length < 2
  current = nums.length - 1
  distance = 0
  while current > 0
    current -= 1
    distance += 1
    if nums[current] >= distance
      distance = 0
    end
  end
  return distance == 0
end
p can_jump([2,3,1,1,4])