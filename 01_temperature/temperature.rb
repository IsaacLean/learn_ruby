def ftoc(fdeg)
	(fdeg - 32.0) * (5.0 / 9.0)
end

def ctof(cdeg)
	(cdeg / (5.0 / 9.0)) + 32
end

puts(ftoc(212))
puts(ctof(0))