=begin
	
Với rootmột cây nhị phân, hãy trả về giá trị của các nút của nó .

Input: root = [1,null,2,3]
Output: [1,3,2]

=end
def inorder_traversal(root)
    output = []
    inorder(root, output)
    output
end

def inorder node, ans
    return if node == nil
    inorder(node.left, ans)
    ans << node.val
    inorder(node.right, ans)
end