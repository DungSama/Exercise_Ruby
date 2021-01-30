=begin
	
Cho một mảng chuỗi strs, hãy nhóm các từ đảo ngữ lại với nhau. 
Bạn có thể gửi lại câu trả lời theo bất kỳ thứ tự nào .
Một đảo chữ cái là một từ hoặc cụm từ được hình thành bằng cách sắp xếp các chữ cái của một từ hoặc cụm từ khác nhau, 
thường sử dụng tất cả các chữ cái gốc đúng một lần.

Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

=end
def group_anagrams(strs)
    anagrams = Hash.new {|h, k| h[k] = []}
    
    strs.each do |str|
        sorted = str.chars.sort
        anagrams[sorted] << str
    end
    
    anagrams.values
end
p group_anagrams(["eat","tea","tan","ate","nat","bat"])