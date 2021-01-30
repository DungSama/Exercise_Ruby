#Bạn được cung cấp hai danh sách liên kết không trống đại diện cho hai số nguyên không âm. 
#Các chữ số được lưu trữ theo thứ tự ngược lại và mỗi nút của chúng chứa một chữ số duy nhất. 
#Thêm hai số và trả về tổng dưới dạng danh sách được liên kết.
#Bạn có thể giả sử hai số không chứa bất kỳ số 0 nào đứng đầu, ngoại trừ chính số 0.
#Input: l1 = [2,4,3], l2 = [5,6,4]
#Output: [7,0,8]
#Explanation: 342 + 465 = 807.
def add_two_numbers(first, second)
	carry = 0
	head = tail = ListNode.new(0)

	while first || second
		sum = first&.val.to_i + second&.val.to_i + carry
		carry, sum = sum.divmod(10)

		first, second, tail.val = first&.next, second&.next, sum
		tail.next = ListNode.new(carry) if first || second || carry.positive?

		tail = tail.next
	end

	head
end

