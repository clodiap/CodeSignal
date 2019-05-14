// # Check if all digits of the given integer are even.

// # Example

// #     For n = 248622, the output should be
// #     evenDigitsOnly(n) = true;
// #     For n = 642386, the output should be
// #     evenDigitsOnly(n) = false.

// # my solution

function evenDigitsOnly(n) {
    return n.toString().split('').every( nb => nb % 2 === 0 )
}

// tests
  console.log(evenDigitsOnly(248622)); //(true)
  console.log(evenDigitsOnly(248842)); //(true)
  console.log(evenDigitsOnly(8)); //(true)
  console.log(evenDigitsOnly(642386)); //(false)
  console.log(evenDigitsOnly(1)); //(false)
  console.log(evenDigitsOnly(2462487)); //(false)

// Others'  solutions

// function evenDigitsOnly(n) {
//     return !(n+'').match(/[13579]/)
// }

function evenDigitsOnly(n) {
  return (n+"").split("").every(x=>x%2===0)
}
