# // In the popular Minesweeper game you have a board with some mines and those cells that don't contain a mine have a number in it that indicates the total number of mines in the neighboring cells. Starting off with some arrangement of mines we want to create a Minesweeper game setup.
# // For
# // matrix = [[true, false, false],
# //           [false, true, false],
# //           [false, false, false]]
# // the output should be
# // minesweeper(matrix) = [[1, 2, 1],
# //                        [2, 1, 1],
# //                        [1, 1, 1]]

# ajouter 1 à ceux qui sont autour
# autour => index-1 & index+1 + tableau-1[index-1, indexCurrent, et index+1] & tableau+1[index-1, indexCurrent, index+1]
# true = 1

# // My solution
def minesweeper(matrix)
  result = matrix.map { |arr| arr.map{|item| item = 0 }}
  2.times { result.map!{|arr| arr.push(0)} }
  2.times { result.push(Array.new(result[0].length, 0)) }
  matrix.map!{|arr| arr.push(0)}
  matrix.map!{|arr| arr.unshift(0)}
  matrix.push(Array.new(result[0].length, 0))
  matrix.unshift(Array.new(result[0].length, 0))
  row_length = matrix.length
  col_length = matrix[0].length

  (0...row_length).each do |row|
    (0...col_length).each do |col|
      if matrix[row][col] == true
        result[row][col+1] += 1
        result[row][col-1] += 1

        result[row+1][col] += 1
        result[row+1][col+1] += 1
        result[row+1][col-1] += 1

        result[row-1][col] += 1
        result[row-1][col+1] += 1
        result[row-1][col-1] += 1
      end
    end
  end
  result.pop
  result.shift
  result = result.each do |arr|
    arr.shift
    arr.pop
  end

  result

end

# // Others' solutions

# def neighbors(a, row, col)
#   neighbors = []

#   if row == 0
#     if col == 0
#       neighbors = [a[row][col], a[row][col + 1], a[row + 1][col], a[row + 1][col + 1] ]
#     elsif col == a[row].length - 1
#       neighbors = [a[row][col], a[row][col - 1], a[row + 1][col], a[row + 1][col - 1] ]
#     else
#       neighbors = [a[row][col], a[row][col - 1], a[row][col + 1],
#       a[row + 1][col], a[row + 1][col - 1], a[row + 1][col + 1] ]
#     end

#   elsif row == a.length - 1
#     if col == 0
#       neighbors = [a[row][col], a[row][col + 1], a[row - 1][col], a[row - 1][col + 1] ]
#     elsif col == a[row].length - 1
#       neighbors = [a[row][col], a[row][col - 1], a[row - 1][col], a[row - 1][col - 1] ]
#     else
#       neighbors = [a[row][col], a[row][col - 1], a[row][col + 1],
#       a[row - 1][col], a[row - 1][col - 1], a[row - 1][col + 1] ]
#     end

#   else
#     if col == 0
#       neighbors = [a[row][col], a[row][col + 1],
#       a[row - 1][col], a[row - 1][col + 1],
#       a[row + 1][col], a[row + 1][col + 1] ]
#     elsif col == a[row].length - 1
#       neighbors = [a[row][col], a[row][col - 1],
#       a[row - 1][col], a[row - 1][col - 1],
#       a[row + 1][col], a[row + 1][col - 1] ]
#     else
#       neighbors = [a[row][col], a[row][col + 1], a[row][col - 1], a[row - 1][col],
#       a[row - 1][col + 1], a[row - 1][col - 1], a[row + 1][col], a[row + 1][col - 1],  a[row + 1][col + 1] ]
#     end
#   end
#   neighbors.count(true)
# end

# def minesweeper(matrix)
#   result = Array.new(matrix.length) { Array.new(matrix.length) }
#   matrix.each_with_index do |x, row|
#     x.each_with_index do |y, col|
#       if matrix[row][col] == true
#         result[row][col] = neighbors(matrix, row, col) - 1
#       else
#         result[row][col] = neighbors(matrix, row, col)
#       end
#     end
#   end
#   result
# end

##################################################

# def minesweeper(matrix)
#   matrix.each_with_index.map do |row, x|
#     row.each_with_index.map do |cell, y|
#       all_cells = []
#       for i in x-1..x+1
#         for j in y-1..y+1
#           if i >= 0 and j >= 0
#             unless i == x and j == y
#               all_cells << [i,j]
#             end
#           end
#         end
#       end

#       puts "=="
#       all_cells
#         .map {| coords| matrix.dig(*coords) }
#         .map {|c| c ? 1 : 0 }
#         .map {|c| puts c; c}
#         .sum
#     end
#   end
# end

#####################################
# def minesweeper(matrix)
#     output = Array.new(matrix.size) {Array.new(matrix[0].size, 0)}
#     matrix.each_with_index { |row, y|
#         row.each_with_index { |v, x|
#             if v then
#                 (y-1..y+1).each { |y2|
#                     next if y2 < 0 || y2 > matrix.size-1
#                     (x-1..x+1).each { |x2|
#                         next if x2 < 0 || x2 > row.size-1
#                         output[y2][x2] += 1 unless x==x2 && y==y2
#                     }
#                 }
#             end
#         }
#     }
#     output
# end

#######################################

# def minesweeper(matrix)
#     res_matrix = Array.new(matrix.size) { Array.new(matrix[0].size, 0) }
#     (0..matrix.size - 1).each do |i|
#       (0..matrix[0].size - 1).each do |j|
#         if matrix[i][j]
#           res_matrix[i - 1][j - 1] += 1 unless i - 1 < 0 || j - 1 < 0
#           res_matrix[i - 1][j] += 1 unless i - 1 < 0
#           res_matrix[i - 1][j + 1] += 1 unless i - 1 < 0 || j + 1 > matrix[0].size - 1
#           res_matrix[i][j - 1] += 1 unless j - 1 < 0
#           res_matrix[i][j + 1] += 1 unless j + 1 > matrix[0].size - 1
#           res_matrix[i + 1][j - 1] += 1 unless i + 1 > matrix.size - 1 || j - 1 < 0
#           res_matrix[i + 1][j] += 1 unless i + 1 > matrix.size - 1
#           res_matrix[i + 1][j + 1] += 1 unless i + 1 > matrix.size - 1 || j + 1 > matrix[0].size - 1
#         end
#       end
#     end
#     res_matrix
# end
