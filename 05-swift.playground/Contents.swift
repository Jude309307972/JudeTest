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





