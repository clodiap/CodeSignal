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

