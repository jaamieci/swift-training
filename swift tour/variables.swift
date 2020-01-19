var myVariable = 42
myVariable = 50
let myConstant = 42
// inferred type

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70


let testConstant: Float = 70



let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)


/* Including values */
let apples = 3
let oranges = 5
let appleSumary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit"
print(appleSumary)
print(fruitSummary)


/* Optional variables. An optional value either contains a value or contains nil
to indicate that a value is missing.
If the optional value is nil, the conditional is false and the code in braces is skipped */
var optionalString: String? = "Hello"
print(optionalString = nil) // ()

var optionalName: String? = "John Applessed"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting) // Hello, John Applessed
}