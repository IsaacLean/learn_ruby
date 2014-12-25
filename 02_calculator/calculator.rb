def add(input1, input2)
	input1 + input2
end

def subtract(input1, input2)
	input1 - input2
end

def sum(input)
	sum = 0
	for i in 0..input.length - 1
		sum += input[i]
	end
	sum
end

def multiply(input)
	if input.length == 0
		product = 0
	else
		product = 1
	end

	for i in 0..input.length - 1
		product *= input[i]
	end
	product
end

def power(input1, input2)
	product = input1
	for i in 0..input2 - 2
		product *= input1
	end

	if(input2 == 0)
		product = 1
	end
	product
end

def factorial(input)
	factorial = 1
	for i in 1..input
		factorial *= i
	end
	factorial
end

puts(multiply([1,2,3,4,5]))
puts(power(3,0))
puts(power(5,7))
puts(factorial(0))
puts(factorial(10))