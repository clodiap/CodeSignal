# Given a rectangular matrix of characters, add a border of asterisks(*) to it.

# Example

# For
# picture = ["abc",
#            "ded"]

# the output should be
# addBorder(picture) = ["*****",
#                       "*abc*",
#                       "*ded*",
#                       "*****"]

#
def addBorder(picture)
  picture.map! { |el| el = '*' + el + '*' }.unshift( '*' * ( picture[0].length) ).push( '*' * ( picture[0].length) )
end


