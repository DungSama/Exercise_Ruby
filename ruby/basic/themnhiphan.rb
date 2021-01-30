#Cho trước hai chuỗi nhị phân avà btrả về tổng của chúng dưới dạng một chuỗi nhị phân .
#Input: a = "11", b = "1"
#Output: "100"

def add_binary(a, b)
  n = a.size 
  m = b.size 
  return add_binary(b,a) if n<m
  l = [n,m].max 
  j = m-1
  i = l-1
  carry = 0
  sb = ""
  i.downto(0) do |i|
    carry +=1 if a[i] == "1"
    carry +=1 if b[j] == "1" && j>-1
    if (carry%2) == 1
      sb += "1"
    else
      sb += "0"
    end

    carry = carry/2 
    j-=1 
  end
  sb += "1" if carry == 1 
  return sb.reverse!
end
p add_binary("11","1")