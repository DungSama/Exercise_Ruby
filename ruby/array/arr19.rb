=begin
	
Đưa ra một mảng được sắp xếp gồm các số nguyên riêng biệt và một giá trị đích, trả về chỉ số nếu mục tiêu được tìm thấy.
Nếu không, hãy trả về vị trí của chỉ mục nếu nó được chèn theo thứ tự.

Đầu vào: nums = [1,3,5,6], target = 5
Đầu ra: 2

Đầu vào: nums = [1,3,5,6], target = 2
Đầu ra: 1

Đầu vào: nums = [1,3,5,6], target = 7
Đầu ra: 4
	
=end

def search_insert(nums, target)
  i = 0
  
  while i < nums.size
    if nums[i] >= target
      return i
    end
    i += 1
  end
  
  return nums.size
end
