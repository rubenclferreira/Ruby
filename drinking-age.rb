age = ARGV[0]



	if age == nil
			puts "Error, please insert your age"

	elsif age.to_i < 18
		puts "Not allowed to drink"

	else
		puts "Allowed to drink"
	end	
	


age = gets.chomp.to_i


