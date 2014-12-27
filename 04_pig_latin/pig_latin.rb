AY = 'ay'

def translate(input)
	splitArr = input.split(' ')
	output = ''
	prevChar = ''

	#print("splitArr 1:\n")
	#puts(splitArr)

	for i in 0..splitArr.length - 1
		firstPart = ''
		for j in 0..splitArr[i].length - 1
			if isVowel(splitArr[i][j]) && (splitArr[i][j] != 'u' && prevChar != 'q')
				if j == 0
					splitArr[i] += AY
					break
				else
					temp = splitArr[i].split(firstPart)
					#print("temp:\n")
					#puts(temp)
					#print('print: ')
					#print("splitArr 2:\n")
					#puts(splitArr)
					#puts('puts: ' + firstPart)
					splitArr[i] = temp[1]
					#print("splitArr[i]:\n")
					#puts(splitArr[i])
					splitArr[i] += firstPart + AY
					break
				end
			end
			firstPart += splitArr[i][j]
			#puts('firstPart:')
			#puts(firstPart)
			prevChar = splitArr[i][j]
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
puts(translate('quiet'))
puts(translate('quick'))
puts(translate('the quick brown fox'))