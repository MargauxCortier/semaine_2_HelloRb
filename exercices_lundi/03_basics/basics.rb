def who_is_bigger(a, b, c)
	if a == nil || c == nil || b == nil
		"nil detected" 
	else
		if a > b && a > c
			"a is bigger"
		elsif b > a && b > c
			"b is bigger"
		elsif c > a && c > b
			"c is bigger"
		end
	end
end


def reverse_upcase_noLTA (phrase)
	phrase.reverse.upcase.delete ("LTA")
end

def array_42(array)
	array.include?(42)
end

def magic_array (array)
	array.flatten.sort.map{|x| x * 2}.reject!{|a| a%3 == 0}.uniq
end

#reject = copie colle et edite dans le deuxieme
#reject! = suprime le array selectionne
#sort = trie les numero
# flatten aplatie l'array, enleve donc tous les [] dans uns notre []
#uniq = ne repete aucune key ou value