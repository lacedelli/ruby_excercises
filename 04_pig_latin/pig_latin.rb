def translate(sentence)
	words = sentence.split(" ")
	words.each { |word|
	if /^[AEIOU]|^[aeiou]/.match? word
			word << "ay"
		else
			# Check if the word starts with a capital letter
			if /^[A-Z]/.match?(word)
				append = word.slice!(/^[^aeiou]*qu|^[^aeiou]*/).to_s
				word.capitalize! << append.downcase << "ay"
			else
				# Check for consonants before vowel
				append = word.slice!(/^[^aeiou]*qu|^[^aeiou]*/).to_s
				word << append << "ay"

			end
		end
	check_punctuation word
	}
	words.join(" ")
end

def check_punctuation(word)
	punctuation = /[^A-Za-z\d]/
	if punctuation.match?(word)
	  append = word.slice!(punctuation).to_s
	  word << append
	end
end
