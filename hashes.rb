
languages = {
	:de => 'German',
	:en => 'English',
	:es => 'spanish',
	:pt => 'Portugues',
}

dictionary = {
	:de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
	:en => { :one => 'one', :two => 'two', :three => 'three' },
	:es => { :one => 'uno', :two => 'dos', :three => 'tres' },
	:pt => { :one => 'um', :two => 'dois', :three => 'tres'}
}

def traduction(language)
	languages = {
	:de => 'German',
	:en => 'English',
	:es => 'spanish',
	:pt => 'Portugues',
}

dictionary = {
	:de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
	:en => { :one => 'one', :two => 'two', :three => 'three' },
	:es => { :one => 'uno', :two => 'dos', :three => 'tres' },
	:pt => { :one => 'um', :two => 'dois', :three => 'tres'}
}


    "In #{languages[language]} #{dictionary[language][:one]} means one, #{dictionary[language][:two]} means two, #{dictionary[language][:three]} means three."
	
end

puts traduction(:de)
puts traduction(:es)
puts traduction(:pt)

