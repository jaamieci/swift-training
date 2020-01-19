/*
    Use func to declare a function. Use -> to separate the parameter names and
    types from the function´s return type
    By default, functions use their parameter names as labels for their arguments
    By default, functions use their parameter names as labels for their arguments   
*/

func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}

let greetValue = greet(person: "Bob", day: "Tuesday")
print(greetValue) // Hello Bob, today is Tuesday

/*
    By default, functions use their parameter names as labels for their arguments.
    Write a custom argument label before the parameter name, or write _ to use no argument label.
*/

func greet2(_ person:String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}

print(greet2("Johny", on: "thursday"))

/*
    Use a touple to make a compound value, for example, to return multiple values from
    a function. The elements of a touple can be referred to either by name or by number.
*/

func calculateStadistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }

        sum += score
    }

    return (min, max, sum)
}

let stadistics = calculateStadistics(scores: [5, 3, 100, 3, 9])
print(stadistics.sum) // 120
print(stadistics.2) // 120


/*
    Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.
*/

func returnFifteen() -> Int {
    var y = 10

    func add() {
        y += 5
    }

    add()
    return y
}

print(returnFifteen()) // 15


/*
Functions are a first-class type. This means that a function can return another function as its value.
*/

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }

    return addOne
}

var increment = makeIncrementer()
print(increment(7)) // 8

// A function can take another function as one of its arguments.

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }

    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen)) // true

/*
Functions are actually a special case of closures: blocks of code that can be called later. The code in a closure has access to things like variables and functions that were available in the scope where the closure was created, even if the closure is in a different scope when it is executed
*/

var tripleNumbers = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(tripleNumbers) // [60, 57, 21, 36]

/* return odd numbers */
var oddNumbers = numbers.map({ (number: Int) -> Int in
    if number % 2 != 0 {
        return number
    }
    return 0
})

print(oddNumbers)

/*
You have several options for writing closures more concisely. When a closure’s type is already known, such as the callback for a delegate, you can omit the type of its parameters, its return type, or both. Single statement closures implicitly return the value of their only statement.
*/
let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
// Prints "[60, 57, 21, 36]"

/*
You can refer to parameters by number instead of by name—this approach is especially useful in very short closures.
A closure passed as the last argument to a function can appear immediately after the parentheses. When a closure is the only argument to a function, you can omit the parentheses entirely.
*/
let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
// Prints "[20, 19, 12, 7]"
