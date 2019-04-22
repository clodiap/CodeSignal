# Ticket numbers usually consist of an even number of digits. A ticket number is considered lucky if the sum of the first half of the digits is equal to the sum of the second half.

# Given a ticket number n, determine if it's lucky or not.

# Example

#     For n = 1230, the output should be
#     isLucky(n) = true;
#     For n = 239017, the output should be
#     isLucky(n) = false.

# My solution
def isLucky(n)
  array1 = n.digits
  array2 = array1.pop(array1.length/2)
  return array1.sum == array2.sum ? true : false
end

# Others' solutions

# def isLucky(n)
#   str = n.to_s.split('').map(&:to_i)
#   str.shift(str.size / 2).inject(&:+) == str.inject(&:+)
# end
