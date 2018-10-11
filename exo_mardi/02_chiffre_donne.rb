sentence = "What a string!"

=begin
def chiffre_de_cesar(sentence, n)
	first_t = sentence.chars.map {|c| c.ord}
	sec_t = first_t.map {|c| c + 5}
	rendu = sec_t.map {|c| c.chr}.join
end
=end

def chiffre_de_cesar(sentence, n)
	rotated = ([*('a'..'z')].zip([*('a'..'z')].rotate(n)) +
	[*('A'..'Z')].zip([*('A'..'Z')].rotate(n))).to_h
	sentence.chars.map {|c| rotated.fetch(c, c)}.join
end 

puts sentence
puts "-" * 20

puts chiffre_de_cesar(sentence, 5)