=begin
	
Một danh sách liên kết được đưa ra sao cho mỗi nút chứa một con trỏ ngẫu nhiên bổ sung có thể trỏ đến bất kỳ nút nào trong danh sách hoặc null.

Trả lại một bản sao sâu của danh sách.

Danh sách liên kết được biểu diễn trong đầu vào / đầu ra dưới dạng danh sách các nnút. Mỗi nút được biểu diễn dưới dạng một cặp trong [val, random_index]đó:

val: một số nguyên đại diện Node.val
random_index: chỉ số của nút (phạm vi từ 0đến n-1) nơi con trỏ ngẫu nhiên trỏ đến hoặc null nếu nó không trỏ đến bất kỳ nút nào.	

Input: head = [[7,null],[13,0],[11,4],[10,2],[1,0]]
Output: [[7,null],[13,0],[11,4],[10,2],[1,0]]

=end
def copyRandomList(head)
    map = Hash.new
    iterator = head
    
    while iterator != nil
        new_node = Node.new(iterator.val)
        map[iterator] = new_node
        iterator = iterator.next
    end
    
    iterator = head
    while iterator != nil
        map[iterator].next = map[iterator.next]
        map[iterator].random =  map[iterator.random]
        iterator = iterator.next
    end
    
    map[head]
end