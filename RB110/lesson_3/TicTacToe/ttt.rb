require 'pry'
require 'yaml'

MESSAGES = YAML.load_file('ttt.yml')

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system('clear')
  puts "Your marker is #{PLAYER_MARKER}. The Computer's marker is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, delimiter=', ', joining_word='or')
  if array.length == 1
    array[0].to_s
  elsif array.length == 2
    array.join(" #{joining_word} ")
  else
  "#{array[0...-1].join(delimiter)}#{delimiter}#{joining_word} #{array.last}"
  end
end

#{empty_squares(brd).join(', ')}

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# def grand_winner?(player, computer)
#   if player == 5
#     prompt "The Player is the Grandmaster!"
#   elsif computer == 5
#     prompt "The Computer is the Grandmaster!"
#   end
# end

def game_loop(brd)
  loop do
    display_board(brd)

    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)

    computer_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def display_winner(brd)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won!"
  else
    prompt "It's a tie!"
  end
end

player_score = 0
computer_score = 0
loop do # main loop
  board = initialize_board

  game_loop(board)
  display_board(board)
  display_winner(board)

  if detect_winner(board) == 'Player'
    player_score += 1
  elsif detect_winner(board) == 'Computer'
    computer_score += 1
  end

  prompt "Player score is #{player_score}, first to 5 wins!"
  prompt "Computer score is #{computer_score}, first to 5 wins!"

  # grand_winner?(player_score, computer_score)
  if player_score == 5
    prompt "The Player is the Grandmaster!"
    player_score = 0
  elsif computer_score == 5
    prompt "The Computer is the Grandmaster!"
    computer_score = 0
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp.strip
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"


# need to figure out score incrementation method
# need to do yaml file
# need to figure out grandmaster method
# would prefer if it displayed score every move and asks if
#   you want to play again after someone gets 5 wins
