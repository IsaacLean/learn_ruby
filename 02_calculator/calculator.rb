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

input = [5]
print sum(input)