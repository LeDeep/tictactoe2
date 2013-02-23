class Board

attr_reader :symbol

def initialize
  @squares = [['_','_','_'],['_','_','_'],['_','_','_']]
  # @cubes2 = [['_','_','_'],['_','_','_'],['_','_','_']]
  # @cubes3 = [['_','_','_'],['_','_','_'],['_','_','_']]
  # @cubes_3D = [@squares1,@square2,@squares3]
  @symbol = 'X'
end  

def to_s
  "#{@squares[0].join(' ')}\n#{@squares[1].join(' ')}\n#{@squares[2].join(' ')}\n"
  
end

def mark_square(row, column)
  @squares[row -1][column -1] = @symbol
  if @symbol == "X"
    @symbol = "O"
  elsif @symbol == "O"
    @symbol = "Y"
  else
    @symbol = "X"
  end
end

def set_squares(square_array)
  @squares = square_array
end

def has_column?
  flat = @squares.flatten
  triad1 = [flat[0],flat[3],flat[6]]
  triad2 = [flat[1],flat[4],flat[7]]
  triad3 = [flat[2],flat[5],flat[8]]
  if triad1.uniq.length == 1
    triad1.uniq != '_'
  elsif triad2.uniq.length == 1
    triad1.uniq != '_'
  elsif triad3.uniq.length == 1
    triad1.uniq != '_'
  else
    false
  end
end

def has_row?
  flat = @squares.flatten
  triad1 = [flat[0],flat[1],flat[3]]
  triad2 = [flat[3],flat[4],flat[5]]
  triad3 = [flat[6],flat[7],flat[8]]
  if triad1.uniq.length == 1
    triad1.uniq != '_'
  elsif triad2.uniq.length == 1
    triad1.uniq != '_'
  elsif triad3.uniq.length == 1
    triad1.uniq != '_'
  else
    false
  end
end

def has_diagonal?
  flat = @squares.flatten
  triad1 = [flat[3],flat[4],flat[6]]
  triad2 = [flat[0],flat[4],flat[8]]
  if triad1.uniq.length == 1
    puts "#{triad1}"
    puts triad1.uniq != '_'
    [triad1.uniq].include?('_')
  elsif triad2.uniq.length == 1
    puts "#{triad1}"
    puts triad1.uniq != '_'
    [triad1.uniq].include?('_')
  else
    false
  end
end

end


