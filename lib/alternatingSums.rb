# Several people are standing in a row and need to be divided into two teams. The first person goes into team 1, the second goes into team 2, the third goes into team 1 again, the fourth into team 2, and so on.

# You are given an array of positive integers - the weights of the people. Return an array of two integers, where the first element is the total weight of team 1, and the second element is the total weight of team 2 after the division is complete.

# Example
# For a = [50, 60, 60, 45, 70], the output should be
# alternatingSums(a) = [180, 105].

# my solution
def alternatingSums(a)
  # return [ a.select.with_index { |item, ind| ind.even? }.sum , a.select.with_index { |item, ind| ind.odd? }.sum ]
  a.partition.with_index { |v, ind| ind.even? }.map(&:sum)
end

# def alternatingSums(a)
#     first = second = 0
#     a.each_with_index do |x, i|
#         i % 2 == 0 ? first+=x : second+=x
#     end

#     [first, second]
# end

# def alternatingSums(a)
#     weights = [0, 0]
#     a.each_with_index{|m, i|
#         weights[i % 2] += m
#     }
#     weights
# end
