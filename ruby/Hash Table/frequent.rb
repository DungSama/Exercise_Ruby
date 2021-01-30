#Cho một mảng các số nguyên không rỗng, trả về k phần tử thường xuyên nhất.
#Input: nums = [1,1,1,2,2,3], k = 2
#Output: [1,2]
def top_k_frequent(nums, k)
    
    frequency_count = Hash.new(0)
    nums.each do |num|
       frequency_count[num] += 1
    end
    
     top_k = frequency_count.to_a.sort_by {|e| e[1]}
     top_k.last(k).map{|e| e[0]}
    
end