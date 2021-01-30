def permute(nums)
    return [] if nums.empty?
    return [ nums ] if nums.size == 1
    
    result = []
    nums.each do |num|
        l = permute(nums - [num])
        result += l.map { |i| [num] + i }
    end
    result
end