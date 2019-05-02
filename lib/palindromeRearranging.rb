# Given a string, find out if its characters can be rearranged to form a palindrome.
# Example
# For inputString = "aabb", the output should be
# palindromeRearranging(inputString) = true.
# We can rearrange "aabb" to make "abba", which is a palindrome.


# My solution
def palindromeRearranging(inputString)
  nb_of_letters = {}
  odd_count = 0;
  inputString.each_char { |char| nb_of_letters[char] = inputString.count(char) }

  nb_of_letters.each_value { |value| odd_count += 1 if value % 2 != 0 }
  ( odd_count <= 1) ? true : false

end


# Others' solutions

# def palindrome_rearranging(s)
#   s.chars.uniq.select{|x|s.count(x)%2==1}.size <= 1
# end

# def palindrome_rearranging(s)
#   s.chars.uniq.map { |x| s.count(x) }.count { |x| x.odd? } < 2
# end

# def palindromeRearranging(w)
#     w.split("").uniq.map{|x| w.count(x)}.count(&:odd?) < 2
# end

# def palindromeRearranging(inputString)
#   inputString.chars.uniq.count {|x| inputString.count(x).odd? }  <= 1
# end
