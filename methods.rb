def say_my_name
	"Ruben"
end

puts say_my_name


def sum(a, b)
	a + b
end

puts sum(2, 2)
puts sum(8, 10)
puts sum(20, 30)

def say_hello(name)
	"Hello #{name} Welcome!"
end

puts say_hello "Ruben"


def allowed_to_drink(age)
	if 
		age >= 18
	else
		"Not allwed to drink"
    end
end

puts "How old are you?"
age = gets.chomp.to_i

puts allowed_to_drink(age)