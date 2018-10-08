def echo (a)
	a
end

def shout (word)
	word.upcase
end

def repeat (word, n=2)
   ("#{word} " * n).strip
end


def start_of_word (word, n)
	word[0..n-1]
end

def first_word(phrase)
	phrase.split.first
end
#split (separe les mots)

def titleize(word)
	phrase = word.capitalize
	noword = ["the", "and"]
	phrase.split(" ").map {|w| noword.include?(w) ? w : w.capitalize }.join(" ")
end


