text = File.read('sample_text.txt')

sentences = text.split(/\.|\?|!/)

largest_sentence = sentences.max_by { |sentence| sentence.split.length }
largest_sentence = largest_sentence.strip

lengths = sentences.map do |sentence|
  sentence.split.length
end
number_of_words = lengths.sort[-1]

puts "This is the longest sentence:"
puts "---------------------------------------------------"
puts "#{largest_sentence}."
puts "---------------------------------------------------"
puts "It is #{number_of_words} words long!"
