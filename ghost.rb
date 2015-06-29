class Ghost

	def color
		color = ["white", "Yellow", "purple", "red"]
		color[rand(color.size)]

			
		
	end
end

ghost = Ghost.new
puts ghost.color

#-------------------other way................................................

class Ghost

	def color
		["white", "Yellow", "purple", "red"].sample
		

			
		
	end
end

ghost = Ghost.new
puts ghost.color

#-------------------------------variável de instancia............................

class Ghost

    def initialize
    	@color = ["white", "Yellow", "purple", "red"].sample
    end	


	def color
		@color
		
	end
end

ghost = Ghost.new
puts ghost.color

#................................other exercise...................................
class MyString

	def initialize(value)
		@string = value
		
	end

	def size
		@string.size

	end
end

str = MyString.new("hello")
puts str.size	
