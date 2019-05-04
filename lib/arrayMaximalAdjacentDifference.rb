# Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

# Example
# For inputArray = [2, 4, 1, 0], the output should be
# arrayMaximalAdjacentDifference(inputArray) = 3.


# My solution
def arrayMaximalAdjacentDifference(inputArray)
  # return inputArray.map.with_index { |nb, ind| (nb - inputArray[ind+1]).abs if !(inputArray[ind+1] == nil) }.compact.max
  # refactoring
    # (0...inputArray.size - 1).map { |ind| (inputArray[ind] - inputArray[ind + 1]).abs }.max
  # use each_cons & reduce
  inputArray.each_cons(2).to_a.map { |arr| arr.reduce{ |acc,nb| (acc - nb).abs }}.max
end

arrayMaximalAdjacentDifference([2, 4, 1, 0]) # 3

# Other's solutions

# def arrayMaximalAdjacentDifference a
#     (0...a.size-1).map{|i| (a[i]-a[i+1]).abs}.max
# end

# def arrayMaximalAdjacentDifference(a)
#     a.each_cons(2).to_a.map { |x| x.reduce(:-).abs }.max
# end
