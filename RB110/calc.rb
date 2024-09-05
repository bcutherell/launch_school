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

def welcome_user(name)
  prompt("#{messages('hello', LANGUAGE)} #{name.capitalize}! #{messages('helping', LANGUAGE)}")
end

def get_name
  name = ''
  loop do
    name = gets.chomp.strip
    if name.empty?
      prompt(messages('valid_name', LANGUAGE))
    else
      break
    end
  end
  name
end

def op_to_message(op)
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

def prompt_number(number)
  number_input = ''
  loop do
    prompt(messages(number, LANGUAGE))
    number_input = gets.chomp.strip

    if valid_number?(number_input)
      number_input = number_input.to_f
      break
    else
      prompt(messages('valid_number', LANGUAGE))
    end
  end
  number_input
end

def prompt_operator
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
  operator
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
    number1 / number2
  end
end

def full_output(operator, number1, number2, result)
  case operator
  when '1'
    "#{number1} + #{number2} = #{result}"
  when '2'
    "#{number1} - #{number2} = #{result}"
  when '3'
    "#{number1} * #{number2} = #{result}"
  when '4'
    "#{number1} / #{number2} = #{result}"
  end
end

def output_result(operator)
  prompt("#{op_to_message(operator)} #{messages('two_numbers', LANGUAGE)}")
end

system('clear')

prompt(messages('welcome', LANGUAGE))
name = get_name
welcome_user(name)
sleep(1)
# pause for the user to read output, and to see 2 lines of text have loaded

loop do # main loop
  number1 = prompt_number('first_number')
  number2 = prompt_number('second_number')
  operator = prompt_operator
  output_result(operator)
  sleep(0.75) # for dramatic effect
  result = calculate_result(operator, number1, number2).round(2)
  prompt(full_output(operator, number1, number2, result))
  prompt("#{messages('result', LANGUAGE)} #{result}")
  prompt(messages('repeat', LANGUAGE))
  answer = gets.chomp.strip
  break unless answer.downcase.start_with?('y')
  system('clear')
end

prompt(messages('thank_you', LANGUAGE))
