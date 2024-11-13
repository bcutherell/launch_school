def into_hash(number)
  hsh = {}
  (1..number).each { |num| hsh[num] = "OFF" }
  hsh
end

def lights(number)
  hsh = into_hash(number)
  keys = hsh.keys
  count = 0
  iteration = 1

  loop do
    break if count == hsh.length
    hsh.each do |key, value|
      if key % iteration == 0
        if hsh[iteration] == "OFF"
          hsh[iteration] = "ON"
        elsif hsh[iteration] == "ON"
          hsh[iteration] = "OFF"
        end
      end
    end
      count += 1
      iteration += 1
  end

  hsh
end

p lights(5)