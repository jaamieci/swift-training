/*
Swift provides three primary collection types, known as arrays, sets, and dictionaries,
for storing collections of values.
*/

/* Arrays */
var someInts = [Int]()
someInts.append(3)
print(someInts)
someInts = []
print(someInts)

// Creating and Array with a default value
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles) // [0.0, 0.0, 0.0]


// crating and array by adding two arrays together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles
print(sixDoubles) // [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]


// creating and array with an array literal
var shoppingList: [String] = ["Egg", "Milk", "Chocolate Spread", "Cheese", "Butter", "Baking Powder", "bread"]
// var shoppingList = ["Egg", "Milk", "Chocolate Spread", "Cheese", "Butter", "Baking Powder", "bread"]
print(shoppingList) // ["Egg", "Milk", "Chocolate Spread", "Cheese", "Butter", "Baking Powder", "bread"]
shoppingList[4...6] = ["Bananas", "Apples"] // replace position 4, 5 and 6
print(shoppingList) // ["Egg", "Milk", "Chocolate Spread", "Cheese", "Bananas", "Apples"]
shoppingList.insert("Maple Syrup", at: 0);
print(shoppingList) // ["Maple Syrup", "Egg", "Milk", "Chocolate Spread", "Cheese", "Bananas", "Apples"]

/*
    methods:
    count: to find out the number of elements in an array
    isEmpty: For checking whether the count property is equal to 0
    append: to add items at the end of the array or doing this: shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
    insert: to insert an item at a specified index insert(_:at:)
    remove: remove an item at a specified index remove(_:at:) and returns the removed item
    removeLast: to remove the last element and returns the removed item
*/

// iterate over an array
for item in shoppingList {
    print(item)
}

/*
Maple Syrup
Egg
Milk
Chocolate Spread
Cheese
Bananas
Apples
*/

// to iterate having access to the index, use the enumerated() method
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}

/*
Item 1: Maple Syrup
Item 2: Egg
Item 3: Milk
Item 4: Chocolate Spread
Item 5: Cheese
Item 6: Bananas
Item 7: Apples
*/


/* Sets */
/*
A set stores distinct values of the same type in a collection with no defined ordering.
You can use a set instead of an array when the order of items is not important, or when you need to ensure
that an item only appears once

The type of a Swift set is written as Set<Element>, where Element is the type that the set is allowed to store.
Unlike arrays, sets do not have an equivalent shorthand form
*/

// empty set
var letters = Set<Character>()
print(letters) // []
letters.insert("a")
print(letters)

// you can create an empty set with an empty array literal
letters = []
print(letters) // []

// creating a set with an array literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
// var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres) // ["Rock", "Classical", "Hip hop"]

// Accesing and modifying a set
/* 
    count: to find out the number of items
    isEmpty: For checking whether the count property is equal to 0
    insert: to insert an element
    remove: to remove an element
    removeAll: to remove all elements
    contains: to check whether a set contains a particular item
    sorted: returns the set´s elements as an array sorted using the < operator
*/

/* iterating over a set */

for genre in favoriteGenres {
    print("\(genre)")
}
/*
Rock
Classical
Hip hop
*/

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}
/*
Classical
Hip hop
Rock
*/

/* Performing set operations */
/*
    You can efficiently perform fundamental set operations, such as combining two sets together,
    determining which values two sets have in common, or determining whether two sets contain all,
    some, or none of the same values:
    - intersection: to create a new set with only the values common to both sets
    - symetricDifference:  to create a new set with values in either set, but not both
    - union: to create a new set with all of the values in both sets
    - substracting: to create a new set with values not in the specified set
*/

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

// Membership and equality
/*
Use the “is equal” operator (==) to determine whether two sets contain all of the same values.
Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specified set.
Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set
Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, but not equal to, a specified set.
Use the isDisjoint(with:) method to determine whether two sets have no values in common.
*/

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true


/* Dictionaries */
/*
A dictionary stores associations between keys of the same type and values of the same type in a collection with no
defined ordering. Each value is associated with a unique key, which acts as an identifier for that value
within the dictionary.
*/

// empty dictionary
var namesOfIntegers = [Int: String]()
// namesOfIntegers is an empty [Int: String] dictionary, with keys of type Int and values of type String
namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
print(namesOfIntegers) // [16: "sixteen"]
namesOfIntegers = [15 : "fifeteen"]
print(namesOfIntegers) // [15: "fifeteen"]
namesOfIntegers = [:]
print(namesOfIntegers) // [:]

// Creating a dictionary with a dictionary literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports) // ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// adding new item
airports["LHR"] = "London"
print(airports) // ["LHR": "London", "YYZ": "Toronto Pearson", "DUB": "Dublin"]

// accesing and modifying a dictionary
/*
    Methods:
    - count
    - isEmpty
    - updateValue: to update a value for a particular key - updateValue(_:forKey:), returning the old value or nil if no value existed
    - removeValue: remove a key-value pair from a dictionary with the removeValue(forKey:), returning the removed value
    or nil if no value exists
*/

if let oldValue = airports.updateValue("Dublin airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

// Prints "The old value for DUB was Dublin."
// checking for a value using subscript sintax
if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}
// Prints "The name of the airport is Dublin Airport."

// subscript sintax to remove a value
airports["APL"] = "Apple International"
// "Apple International" is not the real airport for APL, so delete it
airports["APL"] = nil
// APL has now been removed from the dictionary


if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// Prints "The removed airport's name is Dublin Airport."

/* Iterating over a dictionary */
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
// YYZ: Toronto Pearson
// LHR: London

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: YYZ
// Airport code: LHR

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: Toronto Pearson
// Airport name: London


/*
If you need to use a dictionary’s keys or values with an API that takes an Array instance,
initialize a new array with the keys or values property
*/

let airportCodes = [String](airports.keys)
print(airportCodes) // ["YYZ", "LHR"]

let airportNames = [String](airports.values)
print(airportNames) // ["Toronto Pearson", "London"]

/*
Swift’s Dictionary type does not have a defined ordering. To iterate over the keys or values of a
dictionary in a specific order, use the sorted() method on its keys or values property
*/