#Với một mảng numscủa n số nguyên, ở đó các yếu tố một , b , c 
#trong numsđó có một + b + c = 0? Tìm tất cả các bộ ba duy nhất trong mảng có tổng bằng không.
#Chú ý rằng bộ giải pháp không được chứa các bộ ba trùng lặp.
#input: nums = [-1,0,1,2, -1, -4]
#output: [[-1, -1,2], [- 1,0,1]]
def three_sum(nums)
  res = []
  nums.sort!
  (0...nums.size).each do |i|
    num_i = nums[i]
    break if num_i.positive?
    if i.zero? || (i > 0 && num_i != nums[i - 1])
      x = i + 1
      y = nums.size - 1
      while x < y do
        if (num_i + nums[x] + nums[y]).zero?
          res << [num_i, nums[x], nums[y]]
          x += 1 while x < y && nums[x] == nums[x + 1]
          y -= 1 while x < y && nums[y] == nums[y - 1]
          x += 1
          y -= 1
        else
          num_i + nums[x] + nums[y] < 0 ? x += 1 : y -= 1
        end
      end
    end
  end
  res
end
p three_sum([-1,0,1,2, -1, -4])
#c2 :
nums.combination(3).to_a.select { |ary| ary.sum.zero? }.map(&:sort).uniq