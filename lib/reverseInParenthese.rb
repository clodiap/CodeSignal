# Write a function that reverses characters in (possibly nested) parentheses in the input string.
# Input strings will always be well-formed with matching ()s.

# my solution
def reverseInParentheses(inputString)
  # regex attempt ^^
  # inputString.sub(/\((.*)\)/) {|s| s.reverse }.delete '(' ')'

  parenth_nb = inputString.count('(')

  parenth_nb.times do
    right_open = inputString.rindex('(')
    right_close = inputString.index(')', right_open)
    inputString = inputString[0...right_open] + inputString[right_open..right_close].reverse!.delete!('(' ')') + inputString[right_close+1..-1]
  end
  return inputString
end


# Others' solutions

# def reverseInParentheses input
#     1 while input.sub!(/\((\w*)\)/){ $1.reverse }
#     input
# end

# def reverseInParentheses(is)
#     is=is.gsub(/\(([^()]*)\)/){ $1.reverse } while is.include? "("
#     is
# end

# def reverse_parentheses(s)
#   while s =~ /\(|\)/ do
#     s.gsub!(/\(\w+\)/) { |m| m[1..-2].reverse }
#   end
#   s
# end

# def reverse_parentheses(s)
#   1  while s.sub!( /\([^()]*\)/ ) { |text| text[1...-1].reverse }
#   return s
# end
