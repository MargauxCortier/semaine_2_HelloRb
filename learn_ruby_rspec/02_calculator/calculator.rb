def add (num, number)
	add = num + number
end

def subtract (num, number)
	subtract = num - number
end

def sum (array)
	array.sum
end

def multiply (a, c)
	a * c
end

def power (a, b)
	a**b
end

def factorial (a)
	if a == 0
		return 1
	else
	a.downto(1).inject(:*)
end
end

