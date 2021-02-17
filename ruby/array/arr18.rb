=begin
	
Thực hiện hoán vị tiếp theo , sắp xếp lại các số thành hoán vị lớn hơn tiếp theo về mặt từ vựng của các số.

Nếu không thể sắp xếp như vậy thì phải sắp xếp lại theo thứ tự thấp nhất có thể (tức là sắp xếp theo thứ tự tăng dần).

Việc thay thế phải được thực hiện và chỉ sử dụng bộ nhớ bổ sung không đổi.


Đầu vào: nums = [1,2,3]
Đầu ra: [1,3,2]	

=end

def next_permutation(nums)
  index = nums.count - 1
  while index - 1 >= 0 && nums[index] <= nums[index - 1]
    index -= 1
  end

  if index == 0
    nums.reverse!
    return
  end
  
  greater = index

  while greater + 1 < nums.count && nums[greater + 1] > nums[index - 1]
    greater += 1
  end

  nums[greater], nums[index - 1] = nums[index - 1], nums[greater]
  nums[index..-1] = nums[index..-1].reverse
end