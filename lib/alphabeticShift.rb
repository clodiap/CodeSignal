# Given a string, replace each of its character by the next one in the English alphabet (z would be replaced by a).

# Example
# For inputString = "crazy", the output should be
# alphabeticShift(inputString) = "dsbaz"

# My solution
def alphabeticShift(inputString)
  new_string = ''
  (0...inputString.length).each do |i|
    inputString[i] == 'z' ? new_string += 'a' : new_string += inputString[i].next
  end
  new_string
end

# Others' solutions

# def alphabeticShift(inputString)
#     return inputString = inputString.tr("a-yz","b-za")
# end

# def alphabeticShift(inputString)
#     output = ""
#     inputString.chars.each{|x| output << ((x.ord + 1 - 97) % 26 + 97).chr}
#     output
# end

# def alphabeticShift(inputString)
#     inputString.codepoints.map {|i| i+1 > "z".ord ? "a".ord : i+1}.map(&:chr).join
# end
