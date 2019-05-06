# Last night you partied a little too hard. Now there's a black and white photo of you that's about to go viral! You can't let this ruin your reputation, so you want to apply the box blur algorithm to the photo to hide its content.
# The pixels in the input image are represented as integers. The algorithm distorts the input image in the following way: Every pixel x in the output image has a value equal to the average value of the pixel values from the 3 × 3 square that has its center at x, including x itself. All the pixels on the border of x are then removed.
# Return the blurred image as an integer, with the fractions rounded down.

#For
# image = [[1, 1, 1],
#          [1, 7, 1],
#          [1, 1, 1]]
# the output should be boxBlur(image) = [[1]].
# To get the value of the middle pixel in the input 3 × 3 square: (1 + 1 + 1 + 1 + 7 + 1 + 1 + 1 + 1) = 15 / 9 = 1.66666 = 1. The border pixels are cropped from the final result.

# For
# image = [[7, 4, 0, 1],
#          [5, 6, 2, 2],
#          [6, 10, 7, 8],
#          [1, 4, 2, 0]]

# the output should be
# boxBlur(image) = [[5, 4],
#                   [4, 4]]
# There are four 3 × 3 squares in the input image, so there should be four integers in the blurred output. To get the first value: (7 + 4 + 0 + 5 + 6 + 2 + 6 + 10 + 7) = 47 / 9 = 5.2222 = 5. The other three integers are obtained the same way, then the surrounding integers are cropped from the final result.

# the 3 first of the 3 first array
# ( image[0][0] + image[0][1] + image[0][2] +
#   image[1][0] + image[1][1] + image[1][2] +
#   image[2][0] + image[2][1] + image[2][2]  ) / 9

# ( image[0][1] + image[0][2] + image[0][3] +
#   image[1][1] + image[1][2] + image[1][3] +
#   image[2][1] + image[2][2] + image[2][3]  ) / 9

# 0,1,2,3,4,5,6 => 5
# 0,1,2,3,4,5,6,7 => 6

# My solution
def boxBlur(image)
  squareRows = []
  squareNb = image[0].length - 2
  while image.length >= 3
    squares = []
    (0...squareNb).each do |a|
      square = []

      (0..2).each do |i|
        (0..2).each do |j|
          square << image[i][j+a]
        end
      end

      squares << square
    end
    squareRows << squares.last(squareNb)
    image.shift
  end
  squareRows.map {|row| row.map{|arr| arr.sum / 9} }
end

# Others'solutions

# def boxBlur(image)
#     (1..image.length-2)
#         .map do |i|
#         (1..image[i].length-2)
#             .map do |j|
#                 (i-1..i+1).sum do |i|
#                     (j-1..j+1).sum do |j|
#                         image[i][j]
#                     end
#                 end / 9
#             end
#         end
# end


