def echo string
	string
end

def shout string
	string.upcase
end

def repeat(string, times = 2)
	repeat = "#{string} " * times
	repeat.strip
end

def start_of_word(string, letters = 1)
	product = ""
	for i in 0..letters - 1
		product << string[i]
	end
	product
end

def first_word string
	string.split(" ")[0]
end

def titleize string
	title = ""
	little_words = ["the", "over", "and"]
	words = string.split(" ")
	words[0].capitalize!
	if words.length > 1
		for word in 1..words.length-1
			unless little_words.any? {|little| little == words[word]} 
				words[word].capitalize!
			end
		end
	end
	words.join(" ")
end
