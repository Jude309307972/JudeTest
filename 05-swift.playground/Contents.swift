//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Initisalization

struct Fahrenheit {
    var temperature: Double
    init(){
        temperature = 32.0
    }
}
var f = Fahrenheit()
print("the defualt is \(f.temperature)")

struct Celsius {
    var temperatureInCelsius: Double = 0.0
    init (fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init (fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
}

let boil = Celsius(fromFahrenheit: 212.0)
let free = Celsius(fromKelvin: 273.15)

struct Color {
    var red = 0.0, green = 0.0, blue = 0.0
    init(red: Double,green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
}

let magenta = Color(red: 1.0, green: 1.0, blue: 1.0)

class SurveQuestion {
    var text: String
    var respone: String?
    init (text: String) {
        self.text = text
    }
    func ask(){
        print(text)
    }
}

let cheeseQuestion = SurveQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.respone = "yes, I do like cheese."

class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem()

struct Size {
    var width = 0.0 ,height = 0.0
}

let twoByTwo = Size(width: 2.0, height: 2.0)

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init () {}
    init(origin: Point, size:Size){
        self.origin = origin
        self.size = size
    }
    init(center: Point, size:Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY),size:size)
    }
}

let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unamed]")
    }
}

var nameMeat = Food(name: "bacon")
    nameMeat = Food()
print(nameMeat.name)

class RecipeIngredient: Food {
    var quantity: Int
    init (name: String,quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity:1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingList: RecipeIngredient {
    var purchased = false
    var description : String {
        var output = "\(quantity) x \(name.lowercaseString) "
        output += purchased ? "1" : "2"
        return output
    }
}

var breakfastList = [
    ShoppingList(),
    ShoppingList(name: "Bacon"),
    ShoppingList(name: "Eggs", quantity: 6)
]

breakfastList[0].name = "orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}

// 可失败的构造器

struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty {
            return nil
        }
        self.species = species
    }
}

let someCreature = Animal(species: "cifaffe")
if let giraffe = someCreature {
    print("an animal was \(giraffe.species)")
}

let anonyCreature = Animal(species: "")
if anonyCreature == nil {
    print("the anonrmous")
}

class Shape {
    var numberOfSides = 0
    let width = 50
    func allWidth(number: Int) ->Int{
        return number * numberOfSides
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

let shape = Shape()
print(shape.width)
print(shape.numberOfSides)

let all = shape.allWidth(4)
let strSim = shape.simpleDescription()

class NameShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

class Square: NameShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "a square with sides of legth \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class Circle: NameShape {
    var radius: Double
    init(radius: Double,name : String) {
        self.radius = radius
        super.init(name: name)
        numberOfSides = 5
    }
    
    func area() ->Double{
        return radius * radius
    }
    
    override func simpleDescription() -> String {
        return " circle simple"
    }
}

let circle = Circle(radius: 5, name: "cirecle")
circle.area()
circle.simpleDescription()

class EquilateralTriagnle: NameShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
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
        return "an equilateral \(sideLength)"
    }
}

var triangle = EquilateralTriagnle(sideLength: 3.1, name: "a triang")
triangle.perimeter
triangle.perimeter = 9.9
print(triangle.perimeter)
triangle.sideLength

class TriangleAndSquare {
    var triangle: EquilateralTriagnle {
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
        square = Square (sideLength: size, name: name)
        triangle = EquilateralTriagnle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "lager")
triangleAndSquare.triangle.sideLength

class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

let optionSquare: Square? = Square(sideLength: 2.5, name: "square")
let sideLength = optionSquare?.sideLength

// 枚举和结构体

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue
ace.simpleDescription()

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeDes = threeOfSpades.simpleDescription()

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("out of cheese.")



