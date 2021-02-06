=begin
	
Given a string path, which is an absolute path (starting with a slash '/')
to a file or directory in a Unix-style file system, convert it to the simplified canonical path.
In a Unix-style file system, a period '.' refers to the current directory, 
a double period '..' refers to the directory up a level, and any multiple consecutive slashes (i.e. '//') are treated as a single slash '/'. 
For this problem, any other format of periods such as '...' are treated as file/directory names.

Input: path = "/home/"
Output: "/home"	
=end
def simplify_path(path)
  stack = []
  path.split("/").each do |part|
    case part
    when "", "." 
    when ".."
      stack.pop if stack.any?
    else
      stack.push part
    end
  end
  
  "/" + stack.join("/")
end