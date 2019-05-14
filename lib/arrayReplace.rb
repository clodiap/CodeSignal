# Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem.

# Example
# For inputArray = [1, 2, 1], elemToReplace = 1, and substitutionElem = 3, the output should be
# arrayReplace(inputArray, elemToReplace, substitutionElem) = [3, 2, 3].

# My solution
def arrayReplace(inputArray, elemToReplace, substitutionElem)
  inputArray.map.with_index { |nb, ind| nb == elemToReplace ? inputArray[ind] = substitutionElem : nb}
end

p arrayReplace([1, 2, 1],1,3)#).to eq([3, 2, 3])
p arrayReplace([1, 2, 3, 4, 5],3,0)#).to eq([1, 2, 0, 4, 5])
p arrayReplace([1, 1, 1],1,10)#).to eq([10, 10, 10])
p arrayReplace([10, 10],0,9)#).to eq([10,10])
p arrayReplace([1, 2, 1, 2, 1],2,2)#).to eq([1, 2, 1, 2, 1])

# Others' solutions

# def arrayReplace(inputArray, elemToReplace, substitutionElem)
#     inputArray.map{|x| x == elemToReplace ? substitutionElem : x}
# end
