def computer_places_piece!(brd)
  WINNING_LINES.each do |line|
  if brd.values_at(*line).count(PLAYER_MARKER) == 2

  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end