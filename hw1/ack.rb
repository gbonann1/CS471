def ack(m,n)
	return n + 1 if m == 0
	return ack(m-1, 1) if n == 0 and m > 0
	return ack(m-1, ack(m,n-1)) if n > 0 and m > 0
	return -1

end

if ARGV.length != 2 
  	puts "fact.rb usage: [NUMBER]" 
  	exit
end

puts ack(ARGV[0].to_i, ARGV[1].to_i)

