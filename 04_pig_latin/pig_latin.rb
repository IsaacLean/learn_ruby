AY = 'ay'

def translate(input)
	firstPart = ''
	splitArr = input.split(' ')
	output = ''

	for i in 0..splitArr.length - 1
		for j in 0..splitArr[i].length - 1
			if isVowel(splitArr[i][j])
				if j == 0
					splitArr[i] += AY
					break
				elsif
					temp = splitArr[i].split(firstPart)
					#puts('temp: ' + temp[1])
					splitArr[i] = temp[1]
					splitArr[i] += firstPart + AY
					break
				end
			end
			firstPart += splitArr[i][j]
			#puts('firstPart: ' + firstPart)
		end
	end

	for i in 0..splitArr.length - 1
		output += splitArr[i]

		if i != splitArr.length - 1
			output += ' '
		end
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
puts(translate('cherry'))
puts(translate('eat pie'))
puts(translate('i am stupid'))