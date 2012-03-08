
def count_words(string)
	array = string.downcase.scan(/\w+/)
	keys = array.uniq
	result = {}
	
	keys.each do |word|
		result[word] = array.count(word)
	end
	result
end

puts count_words("A man, a plan, a canal -- Panama")
# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1,'plan' => 1}
puts count_words "Doo bee doo bee doo"  
# => {'doo' => 3, 'bee' => 2}