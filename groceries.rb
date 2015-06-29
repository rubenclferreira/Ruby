shopping_list = ['Beer', 'Water', 'Cookies']

shopping_list_amount = shopping_list.size
puts "I have to buy #{shopping_list_amount} items!"

list_has_chips = shopping_list.include? "Chips"
puts "Chips on the list? " + list_has_chips.to_s

shopping_list << "Chips" 

puts shopping_list

puts "Last item on the list: #{shopping_list.last}"

single_line_list = shopping_list.join "; "
puts "Item: #{single_line_list}"

shopping_list.each do |item|
	puts item
end

shopping_list.each do |item|
	puts item.upcase
end

shopping_list.each_with_index do |item, index|
	puts "Position #{index.to_s}: #{item}"
end
