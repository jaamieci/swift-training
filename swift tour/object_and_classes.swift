class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }

    let myConstant = 0
    func DoubleNumber(number: Int) -> Int{
        return number * 2
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)
// print(Shape)

/* class with initializer: Use init to set up the class when an instance is created
    Use deinit to create a deinitializer if you need to perform some cleanup before
    the object is deallocated.
*/

class NamedShape {
    var numberOfSides: Int = 0;
    var name: String

    init(name: String, numberOfSides: Int) {
        self.name = name
        self.numberOfSides = numberOfSides
    }

    func simpleDescription() -> String {
        return "A shape \(numberOfSides) sides"
    }
}

var namedShape = NamedShape(name: "aleatory shape", numberOfSides: 10);
print(namedShape.name)
print(namedShape.simpleDescription())


/* Subclasses */

/*
Subclasses include their superclass name after their class name, separated by a colon.
There is no requirement for classes to subclass any standard root class, so you can include or omit a superclass as needed.
Methods on a subclass that override the superclass’s implementation are marked with override—overriding a method by accident, without override, is detected by the compiler as an error.
The compiler also detects methods with override that don’t actually override any method in the superclass.
*/

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name, numberOfSides: 4)
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())
print(test.simpleDescription())


class Circle: NamedShape {
    var radious: Double

    init(radious: Double, name: String) {
        self.radious = radious
        super.init(name: name, numberOfSides: 0)
    }

    func area() -> Double {
        return radious * radious * 3.14
    }

    override func simpleDescription() -> String {
        return "A circle with \(radious) radious"
    }
}

var circle = Circle(radious: 4, name: "my circle")
print(circle.area())
print(circle.simpleDescription())


/* getter and setter */
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name, numberOfSides: 3)
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }

        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)


/*
    If you don’t need to compute the property but still need to provide code that is run before and after setting a new value, use willSet and didSet.
    The code you provide is run any time the value changes outside of an initializer.
*/

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}
var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
// Prints "10.0"
print(triangleAndSquare.triangle.sideLength)
// Prints "10.0"
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)
// Prints "50.0"


/*
When working with optional values, you can write ? before operations like methods, properties, and subscripting. If the value before the ? is nil, everything after the ? is ignored and the value of the whole expression is nil. Otherwise, the optional value is unwrapped, and everything after the ? acts on the unwrapped value.
In both cases, the value of the whole expression is an optional value.
*/

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength