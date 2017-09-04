WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]

def won?(board) do
  players = ["X","O"]
  players.each do |player|
    WIN_COMBINATIONS.each do |combination|
      if (board[combination[0] == player && combination[1] == 'X' && combination[2] == player)
        return combination
      end
    end
  end
  nil
end

def full?(board)
  board.all? do |cell|
    !(cell.nil? || cell == " ")
end

def draw?(board) do
  if won?(board) != nil
    false
  elsif !full?(board)
    false
  else
    true
  end
end

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
