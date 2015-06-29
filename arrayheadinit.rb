array = [1,2,3,4,5,6,7,8,9,10]

def head(value_head)
	value_head.first
end

p head(array)

def tail(value_tail)
	value_tail.drop(1)
	
end

p tail(array)

def init(value_init)
	value_init.take(value_init.size - 1)
	
end

p init(array)

def last(value_last)
	value_last.last
end

p last(array)




