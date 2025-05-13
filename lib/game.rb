# frozen_string_literal: true

require_relative 'board'

class Game 
  def initialize(size, marks)
    @board = Board.new(size)
    @marks = marks
    @current_player = 0
    @game_over = false
    @board.print_board
  end

  def game_over?
    winner = @board.check_winner

    if winner == 'draw'
      puts 'Draw! No one wins'
      @game_over = true
    end

    if winner != 'none' && winner != 'draw'
      puts "The winner is: #{winner[0]}"
      @game_over = true
    end

    @game_over
  end

  def take_turn
    print "#{@marks[@current_player]}'s turn. Put mark at (yx -> e.g. b2): "
    str_pos = gets.chomp

    [str_pos[1].to_i - 1, str_pos[0].ord - 'a'.ord]
  end

  def make_move(pos)
    if @game_over
      puts 'Game is over'
      return
    end

    if @board.can_set_mark?(pos)
      @board.set_mark(@marks[@current_player], pos)
      @current_player = (@current_player + 1) % 2
    else
      puts 'You cant put your mark here'
    end

    @board.print_board
  end
end
