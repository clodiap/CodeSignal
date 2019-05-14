// # Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.
// # Check if the given string is a correct variable name.
// # Example
// #     For name = "var_1__Int", the output should be
// #     variableName(name) = true;
// #     For name = "qq-q", the output should be
// #     variableName(name) = false;
// #     For name = "2w2", the output should be
// #     variableName(name) = false.

// # My solution
function variableName(name) {
    let regex = /^[a-zA-Z_][a-zA-Z0-9_]*$/;
    return regex.test(name)
}

console.log(variableName("var_1__Int")); //true
console.log(variableName("variable0"));//.to eq(true)
console.log(variableName("a"));//.to eq(true)
console.log(variableName("_Aas_23"));//.to eq(true)
console.log(variableName("qq-q")); //.to eq(false)
console.log(variableName("2w2")); //.to eq(false)
console.log(variableName(" variable")); //.to eq(false)
console.log(variableName("va[riable0")); //.to eq(false)
console.log(variableName("a a_2")); //.to eq(false)
console.log(variableName("0ss")); //.to eq(false)
