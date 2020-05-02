<<<<<<< HEAD
require "pry"

class TicTacToe
=======
def TicTacToe

  def initialize
    @board = Array.new(9, " ")
  end
>>>>>>> cb745780634655439ca113138c0d24e4fe83d6f7

  WIN_COMBINATIONS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 4, 8],
    [2, 4, 6],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

<<<<<<< HEAD
  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
=======
  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "-----------"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "-----------"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
>>>>>>> cb745780634655439ca113138c0d24e4fe83d6f7
  end

  def input_to_index(input)
    input.to_i - 1
  end

  def move(index, token="X")
    @board[index] = token
  end

  def position_taken?(index)
    @board[index] != " "
  end

  def valid_move?(index)
    (0..8).include?(index) && !position_taken?(index)
  end

  def turn
    puts "Pick a location from 1-9"
    input = gets
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else
<<<<<<< HEAD
      turn
=======
      puts "Invalid move, pick another location from 1-9"
>>>>>>> cb745780634655439ca113138c0d24e4fe83d6f7
    end
  end

  def turn_count
    count = 0
    @board.each { |i| count += 1 if i == "X" || i == "O" }
    count
  end

  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end

  def won?
    WIN_COMBINATIONS.each do |c|
<<<<<<< HEAD
      first_token = @board[c[0]]
      c.each_with_index do |l, i|
        @board[l] != first_token || @board[l] == " " ? break : first_token = @board[l]
        return c if i == c.length - 1
      end
    end
    false
=======
      first_token = c[0]
      c.each do |i|
        @board[i] != first_token ? break : first_token = c[i]
        return WIN_COMBINATIONS[c] if i == c.last
      end
    end
>>>>>>> cb745780634655439ca113138c0d24e4fe83d6f7
  end

  def full?
    turn_count == 9
  end

  def draw?
<<<<<<< HEAD
    won? == false && full? == true
=======
    won? != nil || full? == false ? false : true
>>>>>>> cb745780634655439ca113138c0d24e4fe83d6f7
  end

  def over?
    won? || full?
  end

  def winner
<<<<<<< HEAD
    current_player == "X" ? "O" : "X" if won?
=======
    current_player == "X" ? "O" : "X"
>>>>>>> cb745780634655439ca113138c0d24e4fe83d6f7
  end

  def play
    until over?
      turn
<<<<<<< HEAD
      break if draw?
    end

    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
=======
    end

    if won?
      "Congratulations, #{winner}!"
    elsif draw?
      "Game ended in a draw"
>>>>>>> cb745780634655439ca113138c0d24e4fe83d6f7
    end
  end
end
