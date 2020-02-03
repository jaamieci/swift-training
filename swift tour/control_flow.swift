let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print (teamScore) // 11

/*
    parenthesis around conditions and loops are optional. Braces around
    the body are required

    In a if statement, the conditional must be a Boolean expression - this means
    that code such as if score { ... } is an error, not an implicity comparison to zero
*/

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
// case let x where x.hasSuffix("pepper"): // not suported for swift 4.1.3
//     print("Is it a spicy \(x)?")
case "red pepper":
    print("Is it a spicy")
default:
    print("Everything tastes good in soup.")
}

/*
Switches support any kind of data and a wide variety of comparison operations—they aren’t limited to integers and tests for equality.
*/


let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."



/*
Value binding: values are bound to temporary constants or variables within the case's body
The example below takes an (x, y) point, expressed as a tuple of type (Int, Int),
and categorizes it on the graph that follows
*/

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y): // its match any remaining case, so default case is not necesary
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"

/*
Where: A switch case can use a where clause to check for additional conditions
The example below categorizes an (x, y) point on the following graph
*/

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y): // its match any remaining case, so default case is not necesary
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(1, -1) is on the line x == -y"



/*
Labeled statments:
We can nest loops and conditional statements, however loops and conditions statements can both use the break
statement to end their excecution prematurely. Some times is useful to specified wich loop or condition statement
you want a break statement to terminate it.
Similarly, if you have multiple nested loops, it can be useful to be explicit about which loop the continue statement
should affect.
*/

/*
label name: while condition {
    statements
}
*/

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

/*
    Guard statement -> Early exit.
    Is like an if statement, it is used to require that a condition must be true in
    order for the code after the guard statement to be executed.
    Unlike an if statement, a guard statement always has an else clause
*/

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    print("Hello \(name)!")

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."


/*
If the guard statement’s condition is met, code execution continues after the guard statement’s closing brace
If that condition is not met, the code inside the else branch is executed.
*/


/*
    Checking API Availability
    Swift has built-in support for checking API availability, which ensures that you don’t accidentally use APIs that are unavailable on a
    given deployment target.
    You use an availability condition in an if or guard statement to conditionally execute a block of code, depending on whether the
    APIs you want to use are available at runtime.
*/

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}

/*
The availability condition above specifies that in iOS, the body of the if statement executes only in iOS 10
and later; in macOS, only in macOS 10.12 and later. The last argument, *, is required and specifies that on any
other platform, the body of the if executes on the minimum deployment target specified by your target.
*/