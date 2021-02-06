=begin
	
Cho một chuỗi s, hãy xóa các chữ cái trùng lặp để mỗi chữ cái xuất hiện một lần và chỉ một lần. Bạn phải đảm bảo rằng kết quả của bạn là nhỏ nhất theo thứ tự từ vựng trong số tất cả các kết quả có thể có.

Lưu ý: Câu hỏi này giống với 1081:  https://leetcode.com/problems/smallest-subsequence-of-distinct-characters/

Đầu vào: s = "bcabc"
Đầu ra: "abc"	
=end
def remove_duplicate_letters(s)
  
    hash = { } 
  s.each_char.with_index do |char, index|
      hash[char] = index
  end
  # hash =  {"b"=>3, "c"=>4, "a"=>2}

  result = ""
  
  s.each_char.with_index do |char, index|
    if !result.include?(char) 
      while result.length != 0 && char < result[-1] && index < hash[result[-1]] 
     
      result.slice!(-1) 
      end
      result += char
    end
  end
  
  return result
end