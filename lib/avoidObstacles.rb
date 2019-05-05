# You are given an array of integers representing coordinates of obstacles situated on a straight line.
# Assume that you are jumping from the point with coordinate 0 to the right. You are allowed only to make jumps of the same length represented by some integer.
# Find the minimal length of the jump enough to avoid all the obstacles.

# Example
# For inputArray = [5, 3, 6, 7, 9], the output should be
# avoidObstacles(inputArray) = 4.

# My solution
def avoidObstacles(inputArray)
  max = inputArray.max
  (2..max).each do |i| # the good number is not dividable by all the members of the array
    return i if inputArray.all?{ |nb| nb % i != 0 }
  end
  return max + 1 # or it's the number max + 1
end

# Others'solutions

# def avoid_obstacles(arr)
#   1.upto(arr.max+1).each do |m|
#     return m if arr.none? { |a| a % m == 0 }
#   end
# end

# def avoid_obstacles(arr)
#   jump = 2
#   until !arr.any? { |obs| obs % jump == 0 }
#     jump += 1
#   end
#   jump
# end



