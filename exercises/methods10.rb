def name(names)
	names.sample
end

def activity(activities)
	activities.sample
end

def sentence(name, activity)
	"#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))


# names = ['Dave', 'Sally', 'George', 'Jessica'].sample
# activities = ['walking', 'running', 'cycling'].sample

# def names(nam)
# 	nam
# end

# def activities(activity)
# 	activity
# end

# def sentence(name, activity)
# 	"#{nam} went #{activity} today!"
# end

# puts sentence(nam(names), activity(activities))