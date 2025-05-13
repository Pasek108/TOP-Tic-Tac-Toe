# frozen_string_literal: true

class Board
  def initialize(size)
    @size = size
    @board = Array.new(@size) { Array.new(@size) { ' ' } }
  end

  def check_winner
    row_winner = check_row_win
    return row_winner if row_winner != 'none'

    col_winner = check_col_win
    return col_winner if col_winner != 'none'

    diag_winner = check_diag_win
    return diag_winner if diag_winner != 'none'

    draw? ? 'draw' : 'none'
  end

  def can_set_mark?(pos)
    return false unless pos[0].between?(0, @size - 1)
    return false unless pos[1].between?(0, @size - 1)

    @board[pos[0]][pos[1]] == ' '
  end

  def set_mark(mark, pos)
    @board[pos[0]][pos[1]] = mark
  end

  def print_board
    print_cols
    print_board_top
    print_rows
    print_board_bot
  end

  private

  def draw?
    @board.flatten.all? { |cell| cell != ' ' }
  end

  def check_row_win
    row_winner = @board.find { |row| row.all? { |cell| cell != ' ' && cell == row[0] } }
    row_winner ? row_winner[0] : 'none'
  end

  def check_col_win
    col_winner = @board.transpose.find { |col| col.all? { |cell| cell != ' ' && cell == col[0] } }
    col_winner ? col_winner[0] : 'none'
  end

  def check_diag_win
    len = @size - 1

    diag_1 = (0..len).collect { |i| @board[i][i] }
    diag_2 = (0..len).collect { |i| @board[i][len - i] }

    return diag_1[0] if diag_1.all? { |cell| cell != ' ' && cell == diag_1[0] }
    return diag_2[0] if diag_2.all? { |cell| cell != ' ' && cell == diag_2[0] }

    'none'
  end

  def print_rows
    # Result:
    # 1 │ X │ X │ X │ X │

    @board.each_with_index do |row, i|
      print i + 1
      row.each { |cell| print " │ #{cell}" }
      puts ' │'

      print_board_mid if i < @size - 1
    end
  end

  def print_cols
    # Result:
    #    a   b   c   d

    print ' '
    @size.times { |i| print "   #{(i + 'a'.ord).chr}" }
    puts ''
  end

  def print_board_top
    # Result:
    #  ┌───┬───┬───┬───┐

    print '  ┌'
    print '───┬' * (@size - 1)
    puts '───┐'
  end

  def print_board_mid
    # Result:
    #  ├───┼───┼───┼───┤

    print '  ├'
    print '───┼' * (@size - 1)
    puts '───┤'
  end

  def print_board_bot
    # Result:
    #  └───┴───┴───┴───┘

    print '  └'
    print '───┴' * (@size - 1)
    puts '───┘'
  end
end
