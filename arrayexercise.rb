list = [1,2,3]

total = 1

list.each do |result|
	total = result * total
end

puts total

list = ["Hello", "Word"]
puts list.join " "

array = ['word1', 'word2', 'word3']

new_array = []

array.each do |item|
	new_array << item.capitalize
end

puts new_array



