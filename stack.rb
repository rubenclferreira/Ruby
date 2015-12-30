class Stack

	def initialize
		@store = []
	end

	def push(number)
		@store.push(number) 
		
	end

	def pop
		@store.pop
	end


end

# stack = Stack.new
# stack.push(2)
# stack.push(3)
# p stack.pop # => 3
# p stack.pop # => 2
# p stack.pop # => nil


class Queue

	def initialize
		@store = []
		
	end


	def enqueue(number)
		@store.push(number)
	end


	def dequeue
		#@store.unshift
		 @store.delete_at(0)
	end


end	

queue = Queue.new
queue.enqueue(2)
queue.enqueue(3)
p queue.dequeue # => 2
p queue.dequeue # => 3
p queue.dequeue # => nil