require 'yaml'
MESSAGES = YAML.load_file('calc_text.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  true if num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    messages('adding', LANGUAGE)
  when '2'
    messages('subtracting', LANGUAGE)
  when '3'
    messages('multiplying', LANGUAGE)
  when '4'
    messages('dividing', LANGUAGE)
  end
end

def calculate_result(operator, number1, number2)
  case operator
  when '1'
    number1 + number2
  when '2'
    number1 - number2
  when '3'
    number1 * number2
  when '4'
    number1.to_f / number2.to_f
  end
end

system('clear')

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = gets.chomp.strip

  if name.empty?
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt("#{messages('hello', LANGUAGE)} #{name.capitalize}! #{messages('helping', LANGUAGE)}")
sleep(1)
# pause for the user to read output, and to see 2 lines of text have loaded

loop do # main loop
  number1 = ''
  number2 = ''

  loop do
    prompt(messages('first_number', LANGUAGE))
    number1 = gets.chomp.strip

    if valid_number?(number1)
      number1 = number1.to_f
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = gets.chomp.strip

    if valid_number?(number2)
      number2 = number2.to_f
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end

  prompt(messages('operators', LANGUAGE))

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('must_choose', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} #{messages('two_numbers', LANGUAGE)}")
  sleep(0.75) # for dramatic effect

  result = calculate_result(operator, number1, number2).round(2)

  prompt("#{messages('result', LANGUAGE)} #{result}!")

  prompt(messages('repeat', LANGUAGE))
  answer = gets.chomp.strip
  break unless answer.downcase.start_with?('y')

system('clear')
end

prompt(messages('thank_you', LANGUAGE))
