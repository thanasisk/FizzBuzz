#!/usr/bin/env ruby

1.upto(100) do |i|
	msg = String.new #inefficient! 
	msg += "Fizz" if i % 3 == 0	
	msg += "Buzz" if i % 5 == 0
	puts (msg == "" ? i : msg)
end
