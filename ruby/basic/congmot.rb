=begin
Cho một mảng không trống các chữ số thập phân đại diện cho một số nguyên không âm, tăng một cho số nguyên.

Các chữ số được lưu trữ sao cho chữ số quan trọng nhất nằm ở đầu danh sách và mỗi phần tử trong mảng chứa một chữ số duy nhất.

Bạn có thể cho rằng số nguyên không chứa bất kỳ số 0 nào đứng đầu, ngoại trừ chính số 0.	

Input: digits = [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
	
=end
def plus_one(digits)
  digits = digits.join('').to_i + 1
  digits = digits.to_s.split('')
  digits.map{|item| item.to_i}
end
p plus_one([1,2,3])