/* closed reange operators 
The closed range operator (a...b) defines a range that runs from a to b,
and includes the values a and b. The value of a must not be greater than b
*/

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
// 1 times 5 is 5
// 2 times 5 is 10
// 3 times 5 is 15
// 4 times 5 is 20
// 5 times 5 is 25

/*
Half-Open Range Operator
The half-open range operator (a..<b) defines a range that runs from a to b, but doesn’t include b

Half-open ranges are particularly useful when you work with zero-based lists such as arrays,
where it’s useful to count up to (but not including) the length of the list
*/

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack


/*
One-Sided Ranges
The closed range operator has an alternative form for ranges that continue as far as possible in one direction—for example,
a range that includes all the elements of an array from index 2 to the end of the array. In these cases,
you can omit the value from one side of the range operator.
This kind of range is called a one-sided range because the operator has a value on only one side
*/
for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

/*
The half-open range operator also has a one-sided form that’s written with only its final value
*/

for name in names[..<2] {
    print(name)
}
// Anna
// Alex


/*
One-sided ranges can be used in other contexts, not just in subscripts. 
You can’t iterate over a one-sided range that omits a first value,
because it isn’t clear where iteration should begin
*/

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true