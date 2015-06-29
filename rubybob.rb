
#puts "Hello"

#sentence = gets.chomp

#def bob(sentence)

#	if sentence.end_with?("?")
#		"Sure"
#	elsif sentence.upcase == sentence
#		"Woah, chill out!"		
#	elsif !sentence.end_with?("?") && !sentense.upcase == !sentence
#	     "Whatever"
#	else
#	   sentence.empty?
#	     "Fine. Be that way!"      	
	
 #   end
	
#end

#puts bob(sentence)


def bob(sentence)
	if sentence.empty?
		"Fine. Be that way!"
	elsif sentence == sentence.upcase && sentence != sentence.downcase
		"Woah, chill out"
	elsif sentence.end_with?("?")
		"Sure"
	else
		"Whatever"
		
	end
	
end

loop do
print ">"	
user_input = gets.chomp
if user_input.downcase == "bye"
	puts "Goodbye person"
	break
end
puts bob(user_input)
end