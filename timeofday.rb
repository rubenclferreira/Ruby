require 'date'



def time_of_day(hour)

	if hour.between?(6, 12)
	   "The time of the day is Morning"
    elsif hour.between?(12, 18)
       "The time of the day is Afternoon"
    elsif hour.between?(18, 24)
       "The time of the day is Evening"
    else hour.between?(0, 6)
       "The time of the day is Night"
    end
end

puts time_of_day(DateTime.now.hour)