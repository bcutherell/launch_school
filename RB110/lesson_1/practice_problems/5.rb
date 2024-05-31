flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index do |num|
  num[0, 2] == 'Be'
end