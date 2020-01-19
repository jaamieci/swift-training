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
