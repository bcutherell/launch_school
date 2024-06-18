status = ['awake', 'tired'].sample
puts status

warning = if status == 'awake'
			'Be productive!'
		  else
			'Go to sleep!'
		  end

puts warning

# if status == 'awake'
# 	'Be productive!'
# else 
# 	"Go to sleep!"
# end