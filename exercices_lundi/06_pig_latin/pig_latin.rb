def translate(word)
word.split(' ') |mot| 
    alphabet = ("a..z").to_i
    vowel = %w[a e i o u]
    consonne = alphabet unless vowel 

    if vowel.include?(mot[0])
    	"#{mot}ay"
    elsif
    	consonants.include?(mot[0]) && consonants.include?(mot[1])
        word2 = mot[2..-1]
    	"#{word2}#{mot[0]}#{mot[1]}ay"
	elsif
		word1 = mot[1..-1]
		"#{word1}#{mot[0]}ay"
	
	end

end
