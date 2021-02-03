=begin
	
Cho hai mảng số nguyên được sắp xếp nums1và nums2hợp nhất nums2thành nums1một mảng đã sắp xếp.

Số phần tử được khởi tạo trong nums1và nums2là mvà ntương ứng. Bạn có thể giả định rằng nums1
có kích thước bằng để m + nnó có đủ không gian để chứa các phần tử bổ sung nums2.

Đầu vào: nums1 = [1,2,3.0,0,0], m = 3, nums2 = [2,5,6], n = 3
Đầu ra: [1,2,2,3,5,6]

=end
def merge(nums1, m, nums2, n)
    while m > 0 and n > 0
        if nums1[m-1] >= nums2[n-1]
            nums1[m+n-1] = nums1[m-1]
            m -= 1
        else
            nums1[m+n-1] = nums2[n-1]
            n -= 1
        end
    end
    if n > 0
        nums1[0...n] = nums2[0...n]
    end
end