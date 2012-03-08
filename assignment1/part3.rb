
def combine_anagrams(words)
	output = []
	words.each do |word|
		found = false;
		
		output.each do |anagramArr|			
			if (is_anagram?(anagramArr[0],word))
				anagramArr << word
				found = true				
				break;
			end
		end 
		
		if !found 
			output << [word]
		end

	end
	output
end


def is_anagram?(w1,w2)
	w1.downcase.split("").sort == w2.downcase.split("").sort
end

# words = ['cars', 'For', 'potatoes', 'Racs', 'four','scar', 'creams', 'scream', "apple", "racs", "fro"] 
# puts (combine_anagrams(words)).inspect