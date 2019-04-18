# Given an array of strings, return another array containing all of its longest strings.

# Example
# For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
# allLongestStrings(inputArray) = ["aba", "vcd", "aba"].

# 1ère solution
# def allLongestStrings(inputArray)
#   result = []
#   inputArray.each do |str|
#     result << str if str.size == inputArray.map { |i| i.size }.max
#   end
#   result
# end

# 2ème solution refactorée
def allLongestStrings(inputArray)
  biggest_str = inputArray.map { |i| i.size }.max
  inputArray.select { |i| i.size == biggest_str}
end

# autres solutions de code signal

# def allLongestStrings(inputArray)
#   max = inputArray.map(&:length).max
#   inputArray.select { |x| x.length == max }
# end

