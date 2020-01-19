// Use protocol to declare a protocol.

protocol ExampleProtocol {
    var simpleDescription: String { get }
    var name: String { get }
    mutating func adjust()
}

// Classes, enumerations, and structs can all adopt protocols.
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    var name: String = "SimpleClass"
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription) // A very simple class.  Now 100% adjusted.

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    var name: String = "SimpleStructure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription) // A simple structure (adjusted)

/*
Notice the use of the mutating keyword in the declaration of SimpleStructure to mark a method that modifies the structure.
The declaration of SimpleClass doesn’t need any of its methods marked as mutating because methods on a class can always modify the class.


Use extension to add functionality to an existing type, such as new methods and computed properties.
You can use an extension to add protocol conformance to a type that is declared elsewhere, or even to a type that you imported from a library or framework.
*/

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    var name: String {
        return "\(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)
// Prints "The number 7"

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
// Prints "A very simple class.  Now 100% adjusted."
// print(protocolValue.anotherProperty)  // Uncomment to see the error

