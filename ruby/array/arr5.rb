=begin
	
Cho một mảng được sắp xếp nums , loại bỏ các bản sao tại chỗ như vậy mà mỗi phần tử chỉ xuất hiện một lần và trả về chiều dài mới.

Không cấp phát thêm không gian cho một mảng khác, bạn phải thực hiện việc này bằng cách sửa đổi mảng đầu vào tại chỗ với O (1) bộ nhớ phụ.

Đầu vào: nums = [1,1,2]
Đầu ra: 2, nums = [1,2]	
=end
def remove_duplicates(nums)
    return 0 if nums.empty?
    n = nums.length
    i = 0
    j = nil
    while i < n
        if j.nil?
            j = 0
            nums[j] = nums[i]
        elsif nums[i] != nums[j]
            j = j + 1
            nums[j] = nums[i]
        end
        i = i + 1
    end
    j + 1
end
