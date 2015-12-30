


def make_acronym(string)

	
	first_letter = []

	if !string.is_a?(String)
		"Not a string"
	elsif string.to_i == Fixnum
		"Not Letters"		
		
	else
	array = string.split
	array.each do |letter|
		first_letter << letter.chr.upcase
	end
	 "#{first_letter.join}"
	end
end


p make_acronym("hello word")
p make_acronym("a42")
p make_acronym(42)
p make_acronym([2,12])
p make_acronym({name: 'Abraham'})