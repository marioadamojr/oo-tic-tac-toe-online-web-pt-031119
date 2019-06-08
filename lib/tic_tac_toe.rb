require "pry"
class TicTacToe

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(index, user = "X")
    @board[index] = user
  end

  def position_taken?(index)
    @board[index] == " " ? false : true
  end

  def valid_move?(index)
    @board[index] == " " ? true : false
  end

  def turn_count
    # binding.pry
    tc = @board.count("X") + @board.count("O")
    tc
  end

  def current_player
    if self.turn_count.even?
      "X"
    else
      "O"
    end
  end

  def turn
    puts "Enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    player = current_player
      if valid_move?(index)
        move(index, player)
        display_board
      else

      end
  end

end
