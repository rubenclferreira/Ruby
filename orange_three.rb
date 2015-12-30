class  OrangeTree
attr_reader :height, :age, :fruits
def initialize(height,age,fruits)
	@height = 0
	@age = 0
	@fruits = 0
		
end

def dead?
	if @age >= 100
		true
	elsif @age.between?(51, 99)
		[true, false].sample
	else
		false
	end
	
end


def one_year_passes!
	@age = @age + 1
	if @age <= 10
		@height = @height + 1
		else
			@height 
		
	end

	if @age.between?(6, 10)
		@fruits = 100
	elsif @age.between?(11, 15)
		@fruits = 200
	else
		@fruits = 0
	end	
			
	
	# if @age >= 5 && @age < 10
	# 	@fruits = @fruits + 100
	# elsif age >= 10 && age <= 15
	# 	@fruits = @fruits + 200
	# else
	# 	@fruits
	# end


end	

	def pick_a_fruit!

		@fruits = @fruits -1
		# if @age >= 5 && @age < 15
		#  	@fruits = @fruits -1
		# else
		# 	@fruits	
		# end
	end
		

end

  # TODO: age the tree of one year
  # TODO: check if the tree has survived
  # TODO: if so, make the tree height grow
  # TODO: if so, make the tree grow fruits


tree = OrangeTree.new(0,0,0)
50.times do
tree.one_year_passes!
puts tree.age
puts tree.height
puts tree.fruits
puts tree.pick_a_fruit!
end

