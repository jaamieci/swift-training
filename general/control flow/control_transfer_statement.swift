/*
    continue: tells a loop to stop what is doing and start again at the beginning of the next iteration through the loop
    break : The break statement ends execution of an entire control flow statement immediately
    fallthrough: To go case by case
    return
    throw
*/

// fallthrough exampl
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// Prints "The number 5 is a prime number, and also an integer."