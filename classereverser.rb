class Reverser


  def initialize(value)
       @toreverse = value

	
  end

  def reverser
  	if @toreverse.is_a?(String)
  		@toreverse.reverse
  	elsif @toreverse.is_a?(Fixnum)
  		@toreverse.to_s.reverse.to_i
  	else	
  		@toreverse		
  		
  	end
  	
  end

end





reverser = Reverser.new("Hello")
p reverser.reverser