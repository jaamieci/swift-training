/* for in to iterate over items in a dictionary*/

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var kindNumber: String?

for (kind, numbers) in interestingNumbers {
    print("kind", kind)
    print("numbers", numbers)
    for number in numbers {
        if number > largest {
            kindNumber = kind
            largest = number
        }
    }
}

print(largest) // 25
print("\(kindNumber)")

var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128"



/*
You can keep an index in a loop by using ..< to make a range of indexes
Use ..< to make a range that omits its upper value, and use ... to make a range that includes both values.
*/
var total = 0
for i in 0..<4 {
    total += i
}
print(total)

// Prints "6"