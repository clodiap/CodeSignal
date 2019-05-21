# Given two cells on the standard chess board, determine whether they have the same color or not.

# Example
#     For cell1 = "A1" and cell2 = "C3", the output should be
#     chessBoardCellColor(cell1, cell2) = true.
# For cell1 = "A1" and cell2 = "H3", the output should be
# chessBoardCellColor(cell1, cell2) = false.

def chessBoardCellColor(cell1, cell2)

  def color(cell)
    letter = cell[0]
    number = cell[1].to_i
    if ((["A", "C", "E", "G"].include? letter) && (number % 2 != 0)) || ((["B", "D", "F", "H"].include? letter) && (number % 2 == 0))
      return "black"
    else
      return "white"
    end
  end

  color(cell1) == color(cell2) ? true : false

end

# others' solutions

# def chessBoardCellColor(cell1, cell2)
#     getShade(cell1) == getShade(cell2)
# end
# def getShade(cell)
#     #if ascci chr odd and num odd its dark
#     if cell[0].ord % 2 != 0
#         shade = cell[1].to_i % 2 != 0 ? "dark" : "light"
#     #if ascii chr even and even its dark
#     else
#         shade = cell[1].to_i % 2 == 0 ? "dark" : "light"
#     end
# end

# def chessBoardCellColor(cell1, cell2)
#     x1, y1 = [cell1[0].ord - "A".ord, cell1[1].to_i]
#     x2, y2 = [cell2[0].ord - "A".ord, cell2[1].to_i]
#     (x1 + y1) % 2 == (x2 + y2) % 2
# end

# def chessBoardCellColor(cell1, cell2)
#   cols = ("A".."H").to_a
#   ( (cols.index(cell2[0]) + 1) - (cols.index(cell1[0]) + 1) ).abs.odd? && (cell2[1].to_i - cell1[1].to_i).abs.odd? ||
#   ( (cols.index(cell2[0]) + 1) - (cols.index(cell1[0]) + 1) ).abs.even? && (cell2[1].to_i - cell1[1].to_i).abs.even?
# end

# def chessBoardCellColor(cell1, cell2)
#     get_colour(cell1) == get_colour(cell2)
# end
# def get_colour(cell)
#     odd_letter = "ACEG".include? cell[0]
#     odd_number = "1357".include? cell[1]
#     odd_letter == odd_number ? "dark" : "light"
# end

# def chessboard_cell_color(cell1, cell2)
#   chess_board = ('A'..'H').to_a.product(('1'..'9').to_a)
#   chess_board.index(cell1.chars).even? == chess_board.index(cell2.chars).even?
# end

# def chessboard_cell_color(cell1, cell2)
#   (cell1+cell2).sum.even?
# end
