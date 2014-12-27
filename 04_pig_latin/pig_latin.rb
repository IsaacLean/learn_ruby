AY = 'ay'

def translate(input)
	firstPart = ''
	output = ''

	for i in 0..input.length - 1
		if isVowel(input[i])
			if i == 0
				output = input
				output += AY
				break
			elsif
				temp = input.split(firstPart)
				output = temp[1]
				output += firstPart + AY
				break
			end
		end

		firstPart += input[i]
	end

	return output
end

#returns true if inputChar is a vowel
def isVowel(inputChar)
	vowels = ['a', 'e', 'i', 'o', 'u']

	for i in 0..vowels.length - 1
		if inputChar == vowels[i]
			return true
		end
	end

	return false
end

puts(translate('apple'))
puts(translate('banana'))