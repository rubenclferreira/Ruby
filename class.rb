class Car
	def to_s
		"This is a car"
end

def star_engine
	"The engine has started"
end

def shift_gear(gear)
	"Car is now in gear #{gear}"

my_car = Car.new
puts my_car.to_s
puts my_car.star_engine
puts my_car.shift_gear(3)