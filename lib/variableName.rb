# Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.
# Check if the given string is a correct variable name.
# Example
#     For name = "var_1__Int", the output should be
#     variableName(name) = true;
#     For name = "qq-q", the output should be
#     variableName(name) = false;
#     For name = "2w2", the output should be
#     variableName(name) = false.

# My solution
def variableName(name)
  return false if !name[0].match(/[a-zA-Z_]/) || name[1..-1].match(/[^a-zA-Z0-9_]/)
  true
end

# Others' solutions

# def variableName(name)
#     not (/^[a-zA-Z_][a-zA-Z0-9_]*$/ =~ name).nil?
# end

# def variableName(name)
#     regex = /^([_a-zA-Z]{1,})([a-zA-Z0-9_]{0,})$/
#     if name.match(regex)
#         return true
#     else
#         return false
#     end
# end

# def variableName(name)
#     return false if name[0].match(/\d/)
#     name.each_char { |c| return false if !c.match(/\w/) }
# end
