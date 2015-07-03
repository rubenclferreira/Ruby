class  OrangeTree
attr_reader :height, :age, :fruits
def initialize(height,age,fruits)
	@height = height
	@age = age
	@fruits = fruits
		
end


def one_year_passes!
	@age = @age + 1
	if @age < 10 
		@height + 1
	elsif @fruits + 1
		
	end

  # TODO: age the tree of one year
  # TODO: check if the tree has survived
  # TODO: if so, make the tree height grow
  # TODO: if so, make the tree grow fruits
end




end

tree = OrangeTree.new(0,0,100)

puts tree.one_year_passes!