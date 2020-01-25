/*
    The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type.
    The expression b must match the type that is stored inside a

    The nil-coalescing operator is shorthand for the code below:

    a != nil ? a! : b
*/

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"
/*
The userDefinedColorName variable is defined as an optional String, with a default value of nil.
Because userDefinedColorName is of an optional type, you can use the nil-coalescing operator to consider its value.
In the example above, the operator is used to determine an initial value for a String variable called colorNameToUse.
Because userDefinedColorName is nil,
the expression userDefinedColorName ?? defaultColorName returns the value of defaultColorName, or "red"
*/

/*
    If you assign a non-nil value to userDefinedColorName and perform the nil-coalescing operator check again,
    the value wrapped inside userDefinedColorName is used instead of the default

    userDefinedColorName = "green"
    colorNameToUse = userDefinedColorName ?? defaultColorName
    // userDefinedColorName is not nil, so colorNameToUse is set to "green"
*/

