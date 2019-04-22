# Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees. People can be very tall!


# my firstsolution
# def sortByHeight(a)
#   return a if a.all?(-1)
  # indexes = []
  # sorted = []
  # a.each_with_index do |nb, ind|
  #   if nb != -1
  #     indexes << ind # indexes where to insert the sorted numbers
  #     sorted << nb # numbers to sort
  #   end
  # end
  # sorted.sort!
  # indexes.each_with_index { |at, ind| a[at] = sorted[ind] }
  # return a
# end

# my 2nd solution
def sortByHeight(a)
  indexes = a.map.with_index { |nb, ind| nb == -1 ? nil : ind }.compact
  sorted = a.map.with_index { |nb, ind| nb == -1 ? nil : nb }.compact.sort!
  indexes.each_with_index { |at, ind| a[at] = sorted[ind] }
  return a
end



# others' solutions

# def sortByHeight(a)
#     heights = a.select{|people| people > 0}.sort!
#     a.map {|pos| pos > 0 ? heights.shift : -1}
# end

# def sortByHeight(a)
#     i = -1
#     tree_positions = a.map do |v|
#         i += 1
#         v == -1 ? i : nil
#     end.compact
#     sorted_people = a.map{ |v| v if v > -1}.compact.sort
#     tree_positions.each { |i| sorted_people.insert(i, -1) }
#     sorted_people
# end

# def sort_by_height(arr)
#   people = arr.reject { |num| num == -1 }.sort
#   arr.map { |elem| elem == -1 ? -1 : people.shift }
# end
