#array = ["one", "two", "three"]

#def add_to_string(value)
 #   value.map do |item| 
    #  "<li>" + item + "</li>"
 #   p "<li>#{item}</li>"
#	end
#end

#p "<ul>" + add_to_string(array).join + "</ul>"


def html_list(items)
	text = "<ul>\n"

	items.each do |item|
		text << "\t<li>#{item}</li>\n"
    end
    
    text << "</ul>"
	
end


output = html_list(ARGV)
puts output