var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"
print(shoppingList) // ["catfish", "bottle of water", "tulips"]

var occupations = [ "Malcom": "Captain", "Kaylee": "Mechanic"]
occupations["Jayne"] = "Public Relations"
print(occupations) // ["Jayne": "Public Relations", "Malcom": "Captain", "Kaylee": "Mechanic"]

// Arrays automatically grow as you add elements
shoppingList.append("blue paint")
print(shoppingList)


/* empty array and dictionary */
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
print(emptyArray) // []
print(emptyDictionary) // [:]

/* if information can be inferred, you can use
    shoppingList = []
    occupations = [:]    

    Dictionaries are an unordered collection
*/
