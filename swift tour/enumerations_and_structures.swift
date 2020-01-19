/*
Use enum to create an enumeration.
Like classes and all other named types, enumerations can have methods associated with them.
*/
func comparareRawValues (rank: Rank) {
    let ace = Rank.ace
    let two = Rank.two
    if (ace.rawValue == two.rawValue) {
        print("tienen el mismo valor")
    } else {
        print("no tienen el mismo valor \(ace.rawValue) - \(two.rawValue)")
    }
}

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue
print(ace) // ace
print(aceRawValue) // 1
print(ace.simpleDescription()) // ace

let two = Rank.two
let twoRawValue = two.rawValue
print(two) // two
print(twoRawValue) // 2
print(two.simpleDescription()) // 2

let r = Rank(rawValue: 2)
comparareRawValues(rank: Rank.ace)
/*
By default, Swift assigns the raw values starting at zero and incrementing by one each time, but you can change this behavior by explicitly specifying values.
*/

/*
Use the init?(rawValue:) initializer to make an instance of an enumeration from a raw value. It returns either the enumeration case matching the raw value or nil if there is no matching Rank.
*/

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription) // 3
}

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }

    func color() -> String {
        switch self {
            case .spades:
                return "black"
            case .hearts:
                return "red"
            case .diamonds:
                return "red"
            case .clubs:
                return "black"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
print(heartsDescription)
print(hearts.color())


enum ServerResponse {
    case result(String, String)
    case failure(String)
    case timeOut(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let timeOut = ServerResponse.timeOut("The request has expired for timeout")

switch success {
    case let .result(sunrise, sunset):
        print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
    case let .failure(message):
        print("Failure...  \(message)")
    case let .timeOut(msg):
        print(msg)
}
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."


/*
    STRUCTURES: Use struct to create a structure. Structures support many of the same behaviors as classes, including methods and initializers.
    One of the most important differences between structures and classes is that structures are always copied when they are passed around in your code, but classes are passed by reference.
*/

struct Card {
    var rank: Rank
    var suit: Suit 
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

    func getDeskCards() -> [String]{
        var deskCards = [String]()
        // spades
        deskCards.append("\(Rank.ace.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.two.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.three.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.four.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.five.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.six.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.seven.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.eight.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.nine.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.ten.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.jack.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.queen.simpleDescription()) of \(Suit.spades.simpleDescription())")
        deskCards.append("\(Rank.king.simpleDescription()) of \(Suit.spades.simpleDescription())")

        // hearts
        deskCards.append("\(Rank.ace.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.two.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.three.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.four.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.five.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.six.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.seven.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.eight.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.nine.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.ten.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.jack.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.queen.simpleDescription()) of \(Suit.hearts.simpleDescription())")
        deskCards.append("\(Rank.king.simpleDescription()) of \(Suit.hearts.simpleDescription())")

        // diamonds
        deskCards.append("\(Rank.ace.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.two.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.three.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.four.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.five.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.six.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.seven.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.eight.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.nine.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.ten.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.jack.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.queen.simpleDescription()) of \(Suit.diamonds.simpleDescription())")
        deskCards.append("\(Rank.king.simpleDescription()) of \(Suit.diamonds.simpleDescription())")

        // clubs
        deskCards.append("\(Rank.ace.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.two.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.three.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.four.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.five.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.six.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.seven.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.eight.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.nine.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.ten.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.jack.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.queen.simpleDescription()) of \(Suit.clubs.simpleDescription())")
        deskCards.append("\(Rank.king.simpleDescription()) of \(Suit.clubs.simpleDescription())")

        return deskCards
    }
    

}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription) // The 3 of spades
print(threeOfSpades.getDeskCards())