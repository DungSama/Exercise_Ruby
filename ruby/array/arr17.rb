=begin
Cho trước một tập hợp các số ứng viên ( candidates) và một số đích ( target), 
hãy tìm tất cả các kết hợp duy nhất trong candidates đó các số ứng viên cộng lại target.

Mỗi số trong candidates chỉ có thể được sử dụng một lần trong tổ hợp.

Lưu ý:  Bộ giải pháp không được chứa các kết hợp trùng lặp.


Đầu vào: ứng viên = [10,1,2,7,6,1,5], target = 8
Đầu ra: 
[
[1,1,6],
[1,2,5],
[1,7],
[2,6]
]
	
=end

def combination_sum2(candidates, target)
  candidates.sort!
  
  results = []
  generate_combination_sum(results, [], candidates, target, 0)
  results
end
  
def generate_combination_sum(res, tmp, nums, remain, index)
  if remain == 0
    res << tmp.clone 
    return
  end
    
  return if nums[index].nil? || remain < nums[index]
  
  (index...nums.length).each do |i|
    next if (nums[i] == nums[i-1]) && (i > index)
    break if nums[i] > remain
    
    tmp << nums[i]
    generate_combination_sum(res, tmp, nums, remain - nums[i], i+1)  
    
    tmp.pop
  end
end
