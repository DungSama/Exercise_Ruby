=begin
	
Cho một chuỗi s và một chuỗi không rỗng p , hãy tìm tất cả các chỉ số bắt đầu của các phép đảo ngữ của p trong s .

Chuỗi chỉ bao gồm các chữ cái tiếng Anh viết thường và độ dài của cả hai chuỗi s và p sẽ không lớn hơn 20,100.

Thứ tự đầu ra không quan trọng.
 Input:
s: "cbaebabacd" p: "abc"

Output:
[0, 6]

Explanation:
The substring with start index = 0 is "cba", which is an anagram of "abc".
The substring with start index = 6 is "bac", which is an anagram of "abc".

=end
def find_anagrams(s, p)
  p_size = p.size

  result = []

  p_array = Array.new(26, 0)
  s_array = Array.new(26, 0)

  p.each_char do |char|
    p_array[char.ord - 'a'.ord] += 1
  end

  s.chars.each_with_index do |char, index|
    s_array[s[index - p_size].ord - 'a'.ord] -= 1 if index >= p_size

    s_array[char.ord - 'a'.ord] += 1

    result.push(index + 1 - p_size) if p_array == s_array
  end

  result
end