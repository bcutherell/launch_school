require 'yaml'
MESSAGES = YAML.load_file('rps.yml')
VALID_CHOICES = {
  'rock' => 'rock',         'r' => 'rock',
  'paper' => 'paper',       'p' => 'paper',
  'scissors' => 'scissors', 'sc' => 'scissors',
  'lizard' => 'lizard',     'l' => 'lizard',
  'spock' => 'spock',       'sp' => 'spock'
}
WINNING_COMBINATIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

def prompt(message)
  puts "=> #{message}"
end

def prompt_text(text_key)
  prompt(MESSAGES[text_key])
end

def win?(first, second)
  WINNING_COMBINATIONS[first].include?(second)
end

def get_player_choice
  gets.chomp.downcase.strip
end

def valid_choice?(choice)
  VALID_CHOICES.keys.include?(choice)
end

# def choose_process(player_choice)
#   if valid_choice?(player_choice)
#     VALID_CHOICES[player_choice]
#   elsif player_choice == 's'
#     prompt_text("sc_or_sp")
#   else
#     prompt_text("not_valid")
#   end
# end

def choose_process(player_choice)
  return VALID_CHOICES[player_choice] if valid_choice?(player_choice)

  message = player_choice == 's' ? "sc_or_sp" : "not_valid"
  prompt_text(message)
  nil
end

def display_results(player, computer)
  if win?(player, computer)
    MESSAGES["you_win_round"]
  elsif win?(computer, player)
    MESSAGES["computer_wins_round"]
  else
    MESSAGES["tie"]
  end
end

def score(player_choice, computer_choice, player_score, computer_score)
  if win?(player_choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, player_choice)
    computer_score += 1
  end
  return player_score, computer_score
end

def grand_master?(player_score, computer_score)
  player_score >= 3 || computer_score >= 3
end

def master_announcement(player_score)
  if player_score == 3
    prompt_text("master_player")
  else
    prompt_text("master_computer")
  end
end

loop do # main loop
  player_score = 0
  computer_score = 0

  system('clear')
  prompt_text("welcome")
  prompt_text("rules")
  prompt_text("ready?")
  gets
  system('clear')

  loop do
    player_choice = ''

    loop do
      prompt_text("choose_one")
      player_choice = get_player_choice
      player_choice = choose_process(player_choice)
      break if player_choice
    end

    computer_choice = VALID_CHOICES.values.sample

    result_message = "#{MESSAGES['p_choice']} #{player_choice}; "\
                     "#{MESSAGES['c_choice']} #{computer_choice}"
    result = display_results(player_choice, computer_choice)
    prompt result_message
    prompt result

    player_score, computer_score = score(player_choice, computer_choice,
                                         player_score, computer_score)

    system('clear')
    prompt "#{MESSAGES['p_score']} #{player_score} "\
           "#{MESSAGES['c_score']} #{computer_score}"
    prompt result_message
    prompt result

    break if grand_master?(player_score, computer_score)
  end

  master_announcement(player_score)
  prompt_text("again")
  answer = get_player_choice
  break unless answer.downcase.start_with?('y')
end

prompt_text("goodbye")
