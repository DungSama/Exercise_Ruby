=begin
	
Bạn được cung cấp một mảng số nguyên được numssắp xếp theo thứ tự tăng dần (với các giá trị riêng biệt ) và một số nguyên target.

Giả sử rằng nó numsđược xoay ở một số trục mà bạn chưa biết trước (tức là [0,1,2,4,5,6,7]có thể trở thành [4,5,6,7,0,1,2]).

Nếu targetđược tìm thấy trong mảng, hãy trả về chỉ mục của nó, ngược lại, trả về -1.	

Đầu vào: nums = [4,5,6,7,0,1,2], target = 0
Đầu ra: 4

=end
def search(nums, target)
  return -1 if nums.size == 0
  return 0 if nums[0] == target
  return nums.size-1 if nums[-1] == target
  res = bsearch(nums, target, 0, nums.length - 1)
  res.nil? ? -1 : res
end


def bsearch(nums, target, left, right)
  while left < right
    mid = ((left+right)/2).to_i
    return mid if nums[mid] == target
    if nums[mid] >= nums[0]
      if target >= nums[0] && target < nums[mid]
        right -= 1
      else
        left += 1
      end
    else
      if target < nums[0] && target > nums[mid]
          left += 1
      else
          right -= 1
      end
    end
  end
end
p search([4,5,6,7,0,1,2],0)