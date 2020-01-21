/*
You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.
*/

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber) // Optional(123)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

/*
The question mark indicates that the value it contains is optional, meaning that it might contain some Int value, or it might contain no value at all. (It can’t contain anything else, such as a Bool value or a String value. It’s either an Int, or it’s nothing at all.)
*/

/*
 nil: You set an optional variable to a valueless state by assigning it the special value nil
*/

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value


// If you define an optional variable without providing a default value, the variable is automatically set to nil for you:
var surveyAnswer: String?
// surveyAnswer is automatically set to nil


/*
You can use an if statement to find out whether an optional contains a value by comparing the optional against nil
*/

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

/*
Once you’re sure that the optional does contain a value, you can access its underlying value by adding an exclamation mark (!) to the end of the optional’s name. The exclamation mark effectively says, “I know that this optional definitely has a value; please use it.” This is known as forced unwrapping of the optional’s value
*/

/* Optional binding
    You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable.
*/

/*
if let constantName = someOptional {
    statements
}
*/

if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"

/*
You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas.
If any of the values in the optional bindings are nil or any Boolean condition evaluates to false, the whole if statement’s condition is considered to be false
*/

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// Prints "4 < 42 < 100"

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Prints "4 < 42 < 100"


let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark
print(implicitString)