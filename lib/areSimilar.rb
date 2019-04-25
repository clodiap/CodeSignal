# Two arrays are called similar if one can be obtained from another by swapping at most one pair of elements in one of the arrays.
# Given two arrays a and b, check whether they are similar.

#     For a = [1, 2, 3] and b = [1, 2, 3], the output should be
#     areSimilar(a, b) = true.
#     The arrays are equal, no need to swap any elements.

#     For a = [1, 2, 3] and b = [2, 1, 3], the output should be
#     areSimilar(a, b) = true.
#     We can obtain b from a by swapping 2 and 1 in b.

#     For a = [1, 2, 2] and b = [2, 1, 1], the output should be
#     areSimilar(a, b) = false.
#     Any swap of any two elements either in a or in b won't make a and b equal.

# My solution
def areSimilar(a, b)
  return true if a == b

  if a.sort == b.sort
    temp_array = a
    counter = 0
    (0...a.length).each do |i|
      if (a[i] != b[i]) && (counter < 2)
        temp_array[i] = b[i]
        counter += 1
      end
    end
    return true if temp_array == b
  end

  return false

end


# Others' solutions

# def areSimilar(a, b)
#   a.sort == b.sort and a.each_with_index.count{|n,i| b[i] != n } < 3
# end

# def areSimilar(a, b)
#   a.sort == b.sort && a.each.count { |item| a.index(item) != b.index(item) } <= 2
# end

# def are_similar(a, b)
#   a.sort == b.sort && a.zip(b).count { |x, y| x != y } < 3
# end
