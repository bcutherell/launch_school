stoplight = ['green', 'yellow', 'red'].sample
puts stoplight

case stoplight
when 'green'
	puts "Go!"
when 'yellow'
	puts "Slow down!"
else 'red'
	puts "Stop!"
end

# does putting 'red' affect anything? seems to work still.