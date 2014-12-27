class Book
	attr_accessor :title
	@@neverList = ['and', 'in', 'the', 'of', 'a', 'an']
	@@alwaysList = ['i']

	def title=(newTitle)
		output = ''
		splitArr = newTitle.split(' ')
		splitArr.each_with_index do |x, index|
			if !@@neverList.include? x
				x.capitalize!
			elsif @@alwaysList.include? x
				x.capitalize!
			elsif index == 0
				x.capitalize!
			end
			
			output += x
			
			if index != splitArr.length - 1
				output += ' '
			end
		end
		@title = output
	end
end

b = Book.new
b.title = 'holes'
puts(b.title)

b2 = Book.new
b2.title = 'harry potter'
puts(b2.title)