=begin
	
Hợp nhất hai danh sách liên kết được sắp xếp và trả lại nó dưới dạng danh sách đã sắp xếp 
. 
Danh sách nên được tạo bằng cách nối các nút của hai danh sách đầu tiên với nhau.

Đầu vào: l1 = [1,2,4], l2 = [1,3,4]
Đầu ra: [1,1,2,3,4,4]

=end
def merge_two_lists(l1, l2)
    return l1 if l2.nil?
    return l2 if l1.nil?
    
    if l1.val < l2.val
        l1.next = merge_two_lists(l1.next, l2)
        return l1
    else
        l2.next = merge_two_lists(l1, l2.next)
        return l2
    end
end
