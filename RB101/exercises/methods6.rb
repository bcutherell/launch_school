daylight = [true, false].sample

def time_of_day(something)
		if something
			puts "It's daytime!"
		else
			puts "It's nighttime!"
		end
end

time_of_day(daylight)