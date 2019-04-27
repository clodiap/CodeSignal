# You are given an array of integers. On each move you are allowed to increase exactly one of its element by one. Find the minimal number of moves required to obtain a strictly increasing sequence from the input.

# You are given an array of integers. While iterating through the array,
# you are allowed to increase the current element by one. Find the minimum number
# of increments (moves) required to obtain a strictly increasing sequence in the array.

# *Example*

# For inputArray = [1, 1, 1], the output should be arrayChange(inputArray) = 3
# inputArray[1, 2(+1), 3(+2)];

# Example
# For inputArray = [1, 1, 1], the output should be
# arrayChange(inputArray) = 3.

# [input] array.integer inputArray
# Guaranteed constraints:
# 3 ≤ inputArray.length ≤ 105,
# -105 ≤ inputArray[i] ≤ 105.

# My solution
def arrayChange(inputArray)
  result = 0
  nb_to_compare = -10 ** 5

  (0...inputArray.length).each do |index|
    next_nb = inputArray[index]

    if nb_to_compare < next_nb
      nb_to_compare = next_nb

    else
      result += nb_to_compare - next_nb + 1
      nb_to_compare = nb_to_compare + 1

    end

  end

  p result
end


# Others' solutions

# def arrayChange(inputArray)
#     inputArray.reduce([-10 ** 5 - 1, 0]) do |merged, elem|
#         max = merged[0]
#         moves = merged[1]

#         if max >= elem
#             num_moves_to_add = max - elem + 1
#             moves += num_moves_to_add
#             max += 1
#         else
#             max = elem
#         end

#         [max, moves]
#     end[1]
# end

# def arrayChange(inputArray)
#   moves = 0

#   for x in 0..inputArray.length - 2
#     next_value         = inputArray[x + 1]
#     current_value      = inputArray[x]
#     desired_next_value = inputArray[x] + 1

#     if next_value <= current_value
#       moves += desired_next_value - next_value
#       inputArray[x + 1] = desired_next_value
#     end
#   end
#   moves
# end
