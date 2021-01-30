#Cho một  mảng các số nguyên không rỗngnums , 
#mọi phần tử xuất hiện hai lần, trừ một phần tử . Tìm một cái duy nhất.
#Input: nums = [2,2,1]
#Output: 1
def single_number(nums)
        table = {}
        
        nums.each do |num|
            if table[num] == nil
                table[num] = 1
            else
                table[num] += 1
            end
        end
            
        table.each do |num, count|
            return num if count == 1
        end
    
    return nil
end
p single_number([2,2,1])