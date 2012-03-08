class Class

	def attr_accessor_with_history(attr_name)
		attr_name = attr_name.to_s  # make sure it's a string
		
		attr_reader attr_name  # create the attribute's 
			
		attr_writer attr_name
				
		attr_reader attr_name+"_history" # create bar_history 
	
		class_eval "your code here, use %Q for multiline strings"
	end
end

class Foo
	attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1f.bar = 2
f.bar_history # => if your code works, should be [nil,1,2]