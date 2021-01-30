#Cho một mảng các số nguyên nums và một số nguyên target, 
#trả về chỉ số của hai số sao cho chúng cộng lại với nhautarget 
#Input: nums = [2,7,11,15], target = 9
#Output: [0,1]
#Output: Because nums[0] + nums[1] == 9, we return [0, 1].
def two_sum(nums, target)
    map = {}
    (0...nums.length).each do |i|
        return [map[target - nums[i]], i] if map[target - nums[i]]
        map[nums[i]] = i
    end
end
p two_sum([1,35],36)