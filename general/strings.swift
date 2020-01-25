/*Multi lline string literals*/

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
print(quotation)


// to ommit linebreaks
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(softWrappedQuotation)

// multiline string literal that begins or ends with a line feed
let lineBreaks = """

This string starts with a line break.
It also ends with a line break.

"""
print(lineBreaks)


let threeDoubleQuotationMarks = """
Escaping the first quotation mark \"""
Escaping all three quotation marks \"\"\"
"""
print(threeDoubleQuotationMarks)

// let secuence = #"Line 1\#nLine 2"#
// print(secuence) (test it with the las swift version)


/* String interpolation
String interpolation is a way to construct a new String value from a mix of constants, variables,
literals, and expressions by including their values inside a string literal
*/

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
print(message) // 3 times 2.5 is 7.5

// print(#"Write an interpolated string in Swift using \(multiplier)."#)  test it with last swift version

/* Accesing and modifying a string
Each String value has an associated index type, String.Index, which corresponds to the position of each Character in the string
*/
let greeting = "Guten Tag!"
print(greeting[greeting.startIndex]) // G
print(greeting[greeting.index(before: greeting.endIndex)]) // !
print(greeting[greeting.index(after: greeting.startIndex)]) // u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
print(greeting[index]) // a
// print(greeting[greeting.endIndex]) // Error
// greeting.index(after: greeting.endIndex) // Error


/*
Inserting and removing
To insert a single character into a string at a specified index, use the insert(_:at:) method,
and to insert the contents of another string at a specified index, use the insert(contentsOf:at:) method
*/
var welcome = "hello"
welcome.insert(contentsOf: "!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
print(welcome)
// welcome now equals "hello there!"

/*
To remove a single character from a string at a specified index, use the remove(at:) method,
and to remove a substring at a specified range, use the removeSubrange(_:) method
*/
welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"
