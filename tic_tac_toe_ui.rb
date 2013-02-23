require './lib/game'
require './lib/board'
require './lib/player'


game = Game.new
board = Board.new
players = [Player.new("x"), Player.new("o"),Player.new("y")]

puts "Welcome to Tic-Tac-Toe!"

until game.over?

  players.each do |player|
    puts "#{player.name}, it's your turn! You are #{board.symbol}."
    puts board
    puts "Enter Row (1-3):"
    row = gets.chomp
    puts "Enter Column (1-3):"
    column = gets.chomp
    board.mark_square(row,column)
  end

end