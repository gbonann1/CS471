
def powI(pow, base)
	acc = 1
	p = 0
	for p in (0..pow - 1)
		acc = acc * base
	end
	return acc
end

def powF(pow, base)
	return 1 if pow == 0
	return base if pow == 1
	return powF(pow - 1, base) * base
end

if ARGV.length != 2 
  	puts "fact.rb usage: [NUMBER]" 
  	exit
end

puts powI(ARGV[0].to_i, ARGV[1].to_i)
puts powF(ARGV[0].to_i, ARGV[1].to_i)


