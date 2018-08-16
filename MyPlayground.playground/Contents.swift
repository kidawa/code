
var playerName = "Alice"

var firstName: String
//optional variables(might or might not have a value) use '?'
var middleName: String?
var lastName: String

let weeksInAYear = 52

var score = 1
var highScore = 100.0

highScore = Double(score)

print(highScore)

//Using Optionals

var regularInt: Int
var optionalInt: Int?

regularInt = 100
optionalInt = 100

// this is "optional binding"
if let unwrappedInt = optionalInt {
    print(unwrappedInt)
} else {
    // there is no value
}

//// this is "forced unwrapping"
//if optionalInt != nil {
//    var unwrappedInt = optionalInt!
//    unwrappedInt = unwrappedInt + 50
//    print(unwrappedInt)
//}

// Swift Collections
// Array : ordered collection of items
//     these are zero-based
//     type-safe (all items are same type as array)
//     arrays are mutable (using var) or immutable (using let)

var musicalModes = ["a", "b", "c"]

let initialMode = musicalModes[0]
musicalModes.append("d")
let theRemovedElement = musicalModes.removeLast()

let speed = [1, 2, 3]

// Type annotation for Array of Strings
var myStringArray: [String] = []
var myIntArray: [Int] = []

// Dictionary : a collection of key/value pairs
// Set : unordered collection of items

// if conditions must be true or false

var firstHighScore = 100

if firstHighScore > 5 {
    print("the score is greater than 5")
} else {
    print("the score is less than 5")
}

// Switch statements

let volcano: Int
volcano = 3

switch volcano{
// each case is expected to contain code
case 0:
    print("0")
case 1:
    print("1")
case 2:
    print("2")
case 3:
    print("3")
    print("three")
case 4, 5, 6:
    print("4-6")
    // use of "range operator"
case 7...10:
    print("7-10")
// exhaustive list uses default case
default:
    print("not recognised")
    // break statements can be used
}

// creating loops
//     while itemsToProcess > 0 {}

//     repeat {} while itemsToProcess > 0

//     for ITEM in ITEMS {}

//let bunchOfLetters = ["a", "b", "c", "d", "e", "f"]
//
//for letter in bunchOfLetters {
//    print(letter)
//}

for number in 0...10 {
    print(number)
}

// swift range operators

// closed range operator -> 1...10
//     inclusive of both values

// half-open range operator -> 1..<10
//     range will not inclued value on the right
//     useful for arrays or zero-based index operations

// stride operator in swift

// stride to operator does not include last value
for number in stride(from: 100, to: 0, by: -5) {
    print(number)
}

// stride through operator includes both values
for number in stride(from: 0, through: 256, by: 16) {
    print(number)
}

// string interpolation (inserting items into the middle of something)
// this uses \()

var trackName = "Marcy Me"
var artistName = "Jay-Z"
var duration = 203

let message = "Now playing \(trackName) by \(artistName) which is \(duration / 60)m \(duration % 60)s long"

print(message)






