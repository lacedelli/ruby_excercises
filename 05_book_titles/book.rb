class Book
   def initialize
      @articles = ["a", "an"]
      @conjunctions = ["and"]
      @prepositions = ["in", "the", "of"]
   end 

   def title
      @title 
   end

   def title=(value)
      words = value.split(" ")
      words.each { |word|
	 if @articles.any? {|art| art == word}
	    next
	 elsif @conjunctions.any? {|conj| conj == word}
	    next
	 elsif @prepositions.any? {|pre| pre == word}
	    next
	 end
	 word.capitalize!
      }
      words[0].capitalize!
      @title = words.join(" ")
   end

end


