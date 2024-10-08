MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..4].to_i

  minutes += (hours * MINUTES_PER_HOUR)

  minutes == MINUTES_PER_DAY ? 0 : minutes

  # if sum < 1440
  #   sum
  # else
  #   0
  # end
end

def before_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..4].to_i

  minutes += (hours * MINUTES_PER_HOUR)

  minutes == 0 ? 0 : MINUTES_PER_DAY - minutes
end

p after_midnight('00:00') == 0
p after_midnight('12:34') == 754
p after_midnight('24:00') == 0

p after_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p after_midnight('24:00') #== 0

p before_midnight('00:00') #== 0
p before_midnight('12:34') #== 686
p before_midnight('24:00') #== 0

p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0