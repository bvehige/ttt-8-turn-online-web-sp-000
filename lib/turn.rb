def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  
  puts "-----------"
  
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  
  puts "-----------"
  
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end


def input_to_index(input) 
  input.to_i - 1 

end

def move(board, index, character = "X")
  board[index] = character 
end


def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end

<<<<<<< HEAD

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
  turn(board)
=======
def turn(board, index)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index)
  if !valid_move?(board, index)
  turn(board, index)
>>>>>>> 1a466148a77945f1165aee28efc39da92c35972b
  else
  move(board, index, character = "X")
  end
  display_board(board)
  
end


