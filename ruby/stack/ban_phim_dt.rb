=begin
	
Cho một chuỗi chứa các chữ số từ 2-9bao gồm, trả về tất cả các kết hợp chữ cái có thể có mà số đó có thể đại diện. 
Trả lại câu trả lời theo bất kỳ thứ tự nào .

Input: digits = "23"
Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]	
=end
def letter_combinations(digits)
  res = []
  
  hash = {
    2 => ['a', 'b', 'c'],
    3 => ['d', 'e', 'f'],
    4 => ['g', 'h', 'i'],
    5 => ['j', 'k', 'l'],
    6 => ['m', 'n', 'o'],
    7 => ['p', 'q', 'r', 's'],
    8 => ['t', 'u', 'v'],
    9 => ['w', 'x', 'y', 'z']
  }
  
  digits.each_char do |char|
    tmp = hash[char.to_i]
    
    res = permutation(res, tmp)
  end
  
  res
end

def permutation(arr1, arr2)
  return arr2 if arr1.length < 1
  
  res = []
  arr1.each do |a1|
    arr2.each do |a2|
      res << a1 + a2 
    end
  end
    
  res
end