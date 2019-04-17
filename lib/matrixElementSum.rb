# After becoming famous, the CodeBots decided to move into a new building together. Each of the rooms has a different cost, and some of them are free, but there's a rumour that all the free rooms are haunted! Since the CodeBots are quite superstitious, they refuse to stay in any of the free rooms, or any of the rooms below any of the free rooms.

# Given matrix, a rectangular matrix of integers, where each value represents the cost of the room, your task is to return the total sum of all rooms that are suitable for the CodeBots (ie: add up all the values that don't appear below a 0).
# Example
#     matrix = [[0, 1, 1, 2],
#               [0, 5, 0, 0],
#               [2, 0, 3, 3]]
#     the output should be
#     matrixElementsSum(matrix) = 9.

def matrixElementsSum(matrix)
# Pour chaque tableau calculer l'index du tableau où il y a un zéro
# pour le tableau suivant : additionner les éléments qui ne sont pas concernés par l'index précédent
  bad_indexes = []
  sum = 0
  matrix.each do |row|
    row.each_with_index {|el, ind| sum += el unless bad_indexes.include?(ind) } # sum if index != bad index
    row.each_index { |ind| bad_indexes << ind if row[ind] == 0 } # add bad indexes to array
  end
  return sum
end

# autres solutions sur CodeWars

# def matrix_elements_sum(matrix)
#   matrix.transpose.reduce(0) do |sum, arr|
#     sum += arr.take_while { |a| a != 0 }.reduce(0, :+)
#   end
# end

# def matrix_elements_sum(matrix)
#   sum = 0
#   haunted = []
#   matrix.each do |row|
#     row.each_index do |i|
#       sum += row[i] unless haunted.include?(i)
#       haunted << i if row[i] == 0
#     end
#   end
#   sum
# end

