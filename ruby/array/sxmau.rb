=begin
	
Cho một mảng numsvới ncác đối tượng có màu đỏ, trắng hoặc xanh lam, 
hãy sắp xếp chúng tại chỗ sao cho các đối tượng cùng màu nằm liền kề với các màu theo thứ tự đỏ, trắng và xanh lam.
Chúng tôi sẽ sử dụng số nguyên 0, 1và 2để biểu thị màu đỏ, trắng, và màu xanh, tương ứng.

Đầu vào: nums = [2,0,2,1,1,0]
Đầu ra: [0,0,1,1,2,2]	

=end
def sort_colors(nums)
  counts = nums.reduce(Hash.new(0)) { |hash, num| hash[num] += 1;  hash }
  i = 0
  counts.sort.each do |color, count|
    count.times do 
      nums[i] = color
      i += 1
    end
  end
end
p sort_colors([2,0,2,1,1,0])