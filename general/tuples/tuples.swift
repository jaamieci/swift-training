/*Tuples group multiple values into a single compound value.
The values within a tuple can be of any type and don’t have to be of the same type as each other.*/

let http404Error = (404, "Not found")
print(http404Error) // (404, "Not found")

/* The (404, "Not Found") tuple groups together an Int and a String to give the HTTP status code two separate values:
a number and a human-readable description. It can be described as “a tuple of type (Int, String)”.*/

/* You can decompose a tuple’s contents into separate constants or variables, which you then access as usual: */
let (statusCode, statusMessage) = http404Error;
print("The status code is: \(statusCode)")
print("The status message is: \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")

// You can name the individual elements in a tuple when the tuple is defined
let http200Status2 = (statusCode: 200, description: "OK")
print(http200Status2.statusCode) // 200
print(http200Status2.description) // ok