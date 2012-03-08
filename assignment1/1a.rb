def palindrome?(string)
	s2 = string.gsub(/\W/,'')
	s2.casecmp(s2.reverse) == 0
end

puts palindrome?("A man, a plan, a canal -- Panama") 
 #=> true
puts palindrome?("Madam, I'm Adam!")  
# => true
puts palindrome?("Abracadabra")  
# => false (nil is also ok)