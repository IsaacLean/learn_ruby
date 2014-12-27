class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def time_string
		return Time.at(@seconds).utc.strftime("%H:%M:%S")
	end
end

t = Timer.new
puts t.seconds
puts t.time_string