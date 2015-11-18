def valid_move?(board, position)
  move = position.to_i - 1
  if move > 8 || move < 0
    false
  else
     !position_taken?(board, move)
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  board[position] == "X" || board[position] == "O"
end