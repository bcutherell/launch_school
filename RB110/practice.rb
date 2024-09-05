require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml') # Extracting Messages to a yaml.

def prompt(message)
  puts ">> #{message}"
end

def valid_integer?(num)
  num.to_i.to_s == num  # Already had done this when refactoring.
end

def valid_float?(num)
  num.to_f.to_s == num  # Already had done this when refactoring.
end

def float?(num)
  num.include?('.')
end

def operation_to_message(operator)
  case operator
  when '1'
    DISPLAY['adding']
  when '2'
    DISPLAY['subtracting']
  when '3'
    DISPLAY['multiplying']
  when '4'
    DISPLAY['dividing']
  end
end

loop do
  valid_languages = %w[en es de]
  prompt(MESSAGES['beginning']['select_language'])
  language = gets.chomp.downcase

  if valid_languages.include?(language) # Is it OK to set a CONSTANT with input? I don't know much about constants yet
    LANGUAGE = language
    DISPLAY = MESSAGES[LANGUAGE]
    break
  else
    prompt(MESSAGES['beginning']['try_again'])
  end
end

prompt(DISPLAY['welcome'])
name = ''

loop do
  name = gets.chomp
  break unless name.empty?

  prompt(DISPLAY['valid_name'])
end

prompt("#{DISPLAY['hi']}, #{name}!")
loop do # main loop
  number1 = nil
  number2 = nil

  loop do
    prompt(DISPLAY['enter_number'])
    number1 = gets.chomp

    if float?(number1)
      valid_float?(number1)
      number1 = number1.to_f
      break
    elsif valid_integer?(number1)
      number1 = number1.to_i
      break
    else
      prompt(DISPLAY['invalid_number'])
    end
  end

  loop do
    prompt(DISPLAY['enter_number'])
    number2 = gets.chomp

    if float?(number2)
      valid_float?(number2)
      number2 = number2.to_f
      break
    elsif valid_integer?(number2)
      number2 = number2.to_i
      break
    else
      prompt(DISPLAY['invalid_number'])
    end
  end

  prompt(DISPLAY['operator_prompt'])
  operator = ''

  loop do
    operator = gets.chomp
    break if %w[1 2 3 4].include?(operator)

    prompt(DISPLAY['valid_operation'])
  end

  prompt("#{operation_to_message(operator)} #{DISPLAY['two_numbers']}")
  sleep(0.5)

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             if number2.zero?
               prompt(DISPLAY['divide_by_zero_error'])

               prompt(DISPLAY['again_question'])
               answer = gets.chomp
               break unless answer.downcase.start_with?('y')
             else
               number1 / number2.to_f
             end
           end

  prompt("#{DISPLAY['the_result']} #{result}")
  prompt(DISPLAY['again_question'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(DISPLAY['thank_you'])






















# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hash = {}
# counter = 0

# flintstones.each_with_index do |element, index|
#   flintstones_hash[element] = index
# end

# flintstones.each do |name|
#   flintstones_hash[name] = counter
#   counter += 1
# end

# p flintstones_hash
#-----------------------------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# ages_total = 0

# ages.values.each do |age|
#   ages_total += age
# end

# ages.each do |name, age|
#   ages_total += age
# end

# p ages_total
#-----------------------------
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# p ages.reject { |key, value| value >= 100 }
# p ages.select { |key, value| value < 100}
# p ages.delete_if { |key, value| value >= 100 }
#------------------------------

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# current_age = 0
# p ages.values.min

# loop do
#   current_age = ages.values



#-------------------------------

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_age_males = 0

# munsters.each do |member|
#   member.each do |details|
#     if details['gender'] == 'male'
#       total_age_males += details['age']
#     end
#   end
# end

# p total_age_males

# ---------------------------------

#wiki problem about returning the number of pairs

# def pairs(arr)
#   arr_uniq = arr.uniq
#   counter = 0
  
#   arr_uniq.each do |num|
#     counter += arr.count(num) / 2
#   end

# counter
# end

# p pairs([1, 2, 5, 6, 5, 2])
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])
# p pairs([0, 0, 0, 0, 0, 0, 0])
# p pairs([1000, 1000])
# p pairs([])
# p pairs([54])

# p pairs([1, 2, 5, 6, 5, 2]) == 2
# p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
# p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
# p pairs([1000, 1000]) == 1
# p pairs([]) == 0
# p pairs([54]) == 0