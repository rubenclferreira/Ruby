# require 'prime'


# def number_property(number)
# property = []


#  property << number.prime?
	
#  property << number.even?
 		
#  property << (number % 10 == 0)

#  return property.to_s
						
# end


# puts number_property(20)

require 'prime'

def number_property(num)
	[num.prime? && num > 0, 
	num.even?, 
	num%10 == 0]	
end

p number_property(-7)