
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

// classes and structs

class Appliance {
    var manufacturer: String = ""
    var model: String = ""
    var voltage: Int = 0
    var capacity: Int?
}
    // initializer (so you do not have to provide explicit values)
    // an initializer method with empty parentheses will be called when you create a new instance class (in this case 'Appliance()' with empty parentheses)
    
    init() {
        self.manufacturer = "default manufacturer"
        self.model = "default model"
        self.voltage = 120
        // the capacity can remain uninitialised as it was declared optional above
    }
    
    // additional initializers with different parameters so you can tell them apart
    
    init(withVoltage: Int) {
        self.manufacturer = "default manufacturer"
        self.model = "default model"
        self.voltage = withVoltage
    }
    
    // deinitializer (only one) - only allowed in classes (and not in structs)
    // no parameters and returns no values
    // ARC (automatic reference counting) takes care of any instances that is no longer being used (swift will then call the 'deinit' function, so you don't call the 'deinit' yourself
    
    deinit {
        // perform cleanup code here...
        // release a file resource...
        // release a network resource...
    }

    func getDetails() -> String {
        // use self to show that it is referencing the properties of the current instance
        // to clear up potential conflicting names
        var message = "This is the \(self.model) from \(self.manufacturer). "
        if self.voltage >= 220 {
            message += "This model is for European usage"
        }
        return message
    }
}

var kettle = Appliance()
kettle.manufacturer = "Megappliance, Inc"
kettle.model = "TeaMaster 5000"
kettle.voltage = 120
print(kettle.getDetails())
// use dot syntax to change or call the class functions

var cafetiere = Appliance(withVoltage: 220)
cafetiere.manufacturer = "Megappliance EU"
cafetiere.model = "Electrotiere"
print(cafetiere.getDetails())

// structs

struct Appliance1 {
    // properties
    var manufacturer: String
    var model: String
}

// create a new instance
var toaster = Appliance1(manufacturer: "AcmeCorp", model: "Toastermatic")
// called memberwise initialisers

// difference between structs and classes

// structs are value types (when assigning it to a new variable or constant, the value is copied; when you pass a struct into a function, the value is copied)
// structs do not support inheritance

// classes are reference types (when you pass it to  a function, a reference to the original instance is passed; any change to it can affect the original object)
// classes support inheritance


// you would create a new file with each class

class Tool {
    var make: String
    var model: String
    init() {
        self.make = "default"
        self.model = "default"
    }
    func printDetails() {
        print("Make : \(self.make) \nModel: \(self.model)")
    }
}

// define a new class
// you can create a new class that inherits another class functionality like this
// the new class is called the 'subclass' and the original is called the 'superclass'

class Cooker: Tool {
    var slices: Int
    
    override init() {
        self.slices = 2
    }
    
    func cook() {
        print("cooking now...")
    }
}

var myCooker = Cooker()

// Closures:

struct Book {
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageCount: Int
}

// book instances

let book1 = Book.init(title: "Where the Wild Things Are", authorLastName: "Sendak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48)
let book2 = Book.init(title: "The Little Prince", authorLastName: "de Saint-Exupery", authorFirstName: "Antoine", readingAge: 10, pageCount: 96)
let book3 = Book.init(title: "Oh, the Places You'll Go!", authorLastName: "Seuss", authorFirstName: "Dr.", readingAge: 1, pageCount: 56)
let book4 = Book.init(title: "Goodnight Moon", authorLastName: "Wise Brown", authorFirstName: "Margaret", readingAge: 1, pageCount: 30)
let book5 = Book.init(title: "The Hobbit", authorLastName: "Tolkein", authorFirstName: "J.R.R.", readingAge: 12, pageCount: 300)

// array of book elements

let allBooks = [book1, book2, book3, book4, book5]

// calling a function to sort

func compareTwoBooks (firstBook: Book, secondBook: Book) {
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
}

let ageSortedBooks = allBooks.sorted(by: compareTwoBooks)

// clear up closure
// first take away function

(firstBook: Book, secondBook: Book) {
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
}

// put parameters inside the closure

{
    (firstBook: Book, secondBook: Book)
    // use 'in' to seperate parameters and if statement
    in
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
}

// insert above into the sorted function in constant ageSortedBooks

let ageSortedBooks = allBooks.sorted(by: {
    (firstBook: Book, secondBook: Book)
    in
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
})

// deletion of parameters: because the parameter is the only one that can be used, defining it is unneccessary

let ageSortedBooks = allBooks.sorted(by: {
    if firstBook.readingAge <= secondBook.readingAge {
        return true
    } else {
        return false
    }
})

// However, the names now are not defined ('firstBook' and 'secondBook')
// Swift generates implicit names for parameters starting from '$0'

let ageSortedBooks = allBooks.sorted(by: {
    if $0.readingAge <= $1.readingAge {
        return true
    } else {
        return false
    }
})

// as there is only one argument, you can place the closure outside of the parentheses

let ageSortedBooks = allBooks.sorted(by:)   {
    if $0.readingAge <= $1.readingAge {
        return true
    } else {
        return false
    }
}
    
// because there is only one arguement, you can get rid of the '(by:)'

let ageSortedBooks = allBooks.sorted {
    if $0.readingAge <= $1.readingAge {
        return true
    } else {
        return false
    }
}

// the statement produces a boolean value by default so the 'return true/false' is not needed

let ageSortedBooks = allBooks.sorted {
    return $0.readingAge <= $1.readingAge
}

// define a protocol
protocol MyProtocol {
    func showMessage()
    var name: String { get }
}









