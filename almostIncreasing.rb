# Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

# Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.

# Example

#     For sequence = [1, 3, 2, 1], the output should be
#     almostIncreasingSequence(sequence) = false.

#     There is no one element in this array that can be removed in order to get a strictly increasing sequence.

#     For sequence = [1, 3, 2], the output should be
#     almostIncreasingSequence(sequence) = true.

#     You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

# didn't work :
# def almostIncreasingSequence(sequence)
#   p "*" *60
#   counter = 0
#   (1..sequence.length-1).each do |ind|
#     if sequence[ind] <= sequence[ind-1]
#       counter += 1
#       if !sequence[ind+1].nil?
#         if sequence[ind] <= sequence[ind-2] && sequence[ind+1] <= sequence[ind-1]
#           if ind == 2 && sequence[ind] >= sequence[ind-1]
#             counter += 1
#           else
#             counter += 1
#           end
#         end
#       end
#     end
#   end
#   counter <= 1 ? true : false
# end

def almostIncreasingSequence(sequence)
  p "*" *60
  counter = 0
  biggest_value = -10 ** 5 # valeur la plus basse de l'exo
  second_biggest_value = biggest_value

  sequence.each do |seq|
    if seq > biggest_value # si le nb est plus grand que le précédent - increasing
      second_biggest_value = biggest_value # on assigne la second_biggest_value à la précédente biggest_value
      biggest_value = seq # on assigne la biggest_value au nb actuel

    elsif seq > second_biggest_value # si le nb n'est pas plus grand que le précédent mais est plus grand que le 2è précédent
      biggest_value = seq
      counter += 1

    else
      counter += 1

    end
  end
  counter <= 1 ? true : false

end

p almostIncreasingSequence([1, 3, 2]) # true
p almostIncreasingSequence([1, 2, 3, 4, 3, 6]) # true
p almostIncreasingSequence([3, 5, 67, 98, 3]) # true

p almostIncreasingSequence([1, 1, 2, 3, 4, 4]) # false
p almostIncreasingSequence([1, 3, 2, 1]) # false

# cas particuliers

# cas ou counter = 1 mais false qd même
p almostIncreasingSequence([40, 50, 60, 10, 20, 30]) # false
p almostIncreasingSequence([1, 2, 1, 2]) # false
p almostIncreasingSequence([1, 2, 3, 4, 5, 3, 5, 6]) # false

# élément à enlever au début
p almostIncreasingSequence([10, 1, 2, 3, 4, 5]) # true
p almostIncreasingSequence([123, -17, -5, 1, 2, 3, 12, 43, 45]) # true


# élément à enlever en position -3
p almostIncreasingSequence([1, 2, 5, 3, 5]) # true
p almostIncreasingSequence([1, 2, 3, 4, 99, 5, 6]) # true
