/*
Assertions and preconditions are checks that happen at runtime.
You use them to make sure an essential condition is satisfied before executing any further code.
If the Boolean condition in the assertion or precondition evaluates to true, code execution continues as usual.
If the condition evaluates to false, the current state of the program is invalid; code execution ends, and your app is terminated

The difference between assertions and preconditions is in when they’re checked: Assertions are checked only in debug builds, but preconditions are checked in both debug and production builds.
In production builds, the condition inside an assertion isn’t evaluated.
This means you can use as many assertions as you want during your development process, without impacting performance in production.
*/

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >= 0.

// You can omit the assertion message—for example, when it would just repeat the condition as prose.
assert(age >= 0)

/*
    If the code already checks the condition, you use the assertionFailure(_:file:line:) function to indicate that an assertion has failed. For example:
*/

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}


/*
    Enforcing preconditions
    Use a precondition whenever a condition has the potential to be false,
    but must definitely be true for your code to continue execution.
    For example, use a precondition to check that a subscript is not out of bounds, or to check that a function has been passed a valid value
*/

// In the implementation of a subscript...
let index = 0
precondition(index > 0, "Index must be greater than zero.") // Precondition failed: Index must be greater than zero


