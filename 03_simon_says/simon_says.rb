def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, timesToLoop = 2)
	output = ''
	for i in 1..timesToLoop
		output += input
		if i != timesToLoop
			output += ' '
		end
	end
	output
end

def start_of_word(input, numLetters)
	output = ''
	for i in 0..numLetters - 1
		output += input[i]
	end
	output
end

def first_word(input)
	output = ''
	for i in 0..input.length - 1
		if input[i] == ' '
			break
		end

		output += input[i]
	end
	output
end

def titleize(input)
	output = ''
	splitArr = input.split(' ')
	for i in 0..splitArr.length - 1
		if splitArr[i] != 'and' && splitArr[i] != 'the' && splitArr[i] != 'over'
			splitArr[i].capitalize!
		elsif i == 0
			splitArr[i].capitalize!
		end

		output += splitArr[i]

		if i != splitArr.length - 1
			output += ' '
		end
	end
	output
end

puts(repeat('derp'))
puts(repeat('derp', 2))
puts(repeat('derp', 3))
puts(repeat('derp', 1))
puts(repeat('derp', 0))
puts(titleize('hello world'))