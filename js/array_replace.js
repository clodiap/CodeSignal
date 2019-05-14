// # Given an array of integers, replace all the occurrences of elemToReplace with substitutionElem.

// # Example
// # For inputArray = [1, 2, 1], elemToReplace = 1, and substitutionElem = 3, the output should be
// # arrayReplace(inputArray, elemToReplace, substitutionElem) = [3, 2, 3].

// # My solution
function arrayReplace(inputArray, elemToReplace, substitutionElem) {
    return inputArray.map( number =>  number === elemToReplace ? substitutionElem : number );
}

// tests
console.log(arrayReplace([1, 2, 1],1,3)); //([3, 2, 3])
console.log(arrayReplace([1, 2, 3, 4, 5],3,0)); //([1, 2, 0, 4, 5])
console.log(arrayReplace([1, 1, 1],1,10)); //([10, 10, 10])
console.log(arrayReplace([1, 2, 1, 2, 1],2,2)); //([1, 2, 1, 2, 1])
console.log(arrayReplace([3, 1],3,9)); //([9, 1])
console.log(arrayReplace([10, 10],0,9)); //([10,10])
