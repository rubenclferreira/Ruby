class Dessert
  def initialize(name, calories)
  	@name = name
  	@calories = calories
  end

  def healthy?
  	@calories < 200
  end

  def delicious?
  		true
  end
end

class JellyBean < Dessert
	attr_reader :flavor
  def initialize(name, calories, flavor)
  	super(name, calories)
  	@flavor = flavor
  end


	def delicious?
		 @flavor != "black licorice"
	 	# if @flavor == "black licorice"
	 	# 	false
	 	# else
	 	# 	true
	 	# end
	end
end

dessert = Dessert.new("dessert",150)

#puts dessert.healthy?
#puts dessert.delicious?

jellyBean = JellyBean.new("chocolate",200,"black licorice")

puts jellyBean.delicious?