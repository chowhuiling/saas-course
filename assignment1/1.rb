def palindrome?(string)
	s2 = string.gsub(/\W/,'')
	s2.casecmp(s2.reverse) == 0
end

# puts palindrome?("A man, a plan, a canal -- Panama") 
#  #=> true
# puts palindrome?("Madam, I'm Adam!")  
# # => true
# puts palindrome?("Abracadabra")  
# # => false (nil is also ok)
# puts palindrome?("")
# puts palindrome?(".")
# puts palindrome?("12")
# puts palindrome?("121")


def count_words(string)
	array = string.downcase.scan(/\w+/)
	keys = array.uniq
	result = {}
	
	keys.each do |word|
		result[word] = array.count(word)
	end
	result
end

# puts count_words("A man, a plan, a canal -- Panama")
# # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1,'plan' => 1}
# puts count_words "Doo bee doo bee doo"  
# # => {'doo' => 3, 'bee' => 2}