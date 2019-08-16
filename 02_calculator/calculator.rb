def add(a,b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum arr
	total = 0
	unless  arr.any?
		return 0
	end
	arr.each {|i| total += i}
	total
end

def multiply  *args
	total = 1
	if args.length == 2 
		total = args[0] * args[1]
	elsif args.length > 2
		args.each {|i| total *= i}
	end
	total
end

def power(a, b)
	a**b
end

def factorial n
	factor = 1
	if n >= 2 
		for i in 1..n
			factor *= i
		end
	end
	factor
end
