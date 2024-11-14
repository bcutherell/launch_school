def initialize_lights(number)
  hsh = {}
  (1..number).each { |num| hsh[num] = "OFF" }
  hsh
end

def toggle_light(light)
  if light == "ON"
    'OFF'
  else
    'ON'
  end
end

def lights(number)
  hsh = initialize_lights(number)
  keys = hsh.keys
  count = 0
  iteration = 1
  hsh2 = {}

  hsh.each do |key, value|
    if key % iteration == 0
      hsh2[value] = toggle_light(value)
    end
  end
  hsh2
end

p lights(5)