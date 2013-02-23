require '../lib/board'

board = Board.new

puts "#{board.class} should be Board"

puts board
puts "..should look like:"
puts "_ _ _\n_ _ _\n_ _ _"


puts "#{board.symbol} should be X."

board.mark_square(2,2)
puts board
puts "... should have an X in the middle."
board.mark_square(3,3)
puts board
puts "... should have an O in the lower right corner."

puts "column: #{board.has_column?} should be false"
board.set_squares(
  [['_','X','_'],
   ['_','X','_'],
   ['_','X','_']]
  )
puts board

puts "column: #{board.has_column?} should be true"

puts "row: #{board.has_row?} should be false"
board.set_squares(
  [['X','X','X'],
   ['_','_','_'],
   ['_','_','_']]
  )
puts board

puts "row: #{board.has_row?} should be true"

puts "diagonal: #{board.has_diagonal?} should be false"

board.set_squares(
  [['_','_','X'],
   ['_','X','_'],
   ['X','_','_']]
  )
puts board

puts "diagonal: #{board.has_diagonal?} should be true"