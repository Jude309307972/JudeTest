//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 集合类型 collection types

var shoppingList:[String] = ["eggs","milk"]

var List = ["eggs", "milk"]

print("the shopping list contains \(shoppingList) items")

if shoppingList.isEmpty {
    print("the shopping list is empty")
} else {
    print("the shopping list is not empty")
}

shoppingList.append("flour")

shoppingList += ["baking powder"]
shoppingList += ["chocolate spread","cheese","butter"]

var fistItem = shoppingList[1]

shoppingList[0] = "six eggs"

shoppingList.insert("maple syrup", atIndex: 0)

let mapleSyrup = shoppingList.removeAtIndex(0)

fistItem = shoppingList[0]

let apples = shoppingList.removeLast()

for item in shoppingList {
    print(item)
}


var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items")

someInts.append(3)
someInts = []

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)

var anotherThreeDouble = Array(count: 3, repeatedValue: 2.5)

var sixDoubles = threeDoubles + anotherThreeDouble

// 字典
var airports:[String:String] = ["TYO" : "Tokyo", "DUB": "Dubin"]
print("the dictionary of airports cont")

print("the dictionary of airports contains \(airports.count) items")

if airports.isEmpty {
    print("the airports dictionary is empty")
} else {
    print("the airports dictionary is not empty")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Internation", forKey: "DUB"){
    print("the old value for Dub was \(oldValue)")
}

if let airportName = airports["DUB"] {
    print("the name of the airport is \(airportName)")
} else {
    print("the ")
}
airports["APL"] = "apple internation"
airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB")
{
    print(" name is \(removedValue)")
} else {
    print("111")
}

for (airportCode, airportName) in airports {
    print("\(airportCode):\(airportName)")
}

for airportCode in airports.keys {
    print("airport code:\(airportCode)")
}

for airportName in airports.values {
    print("airportName \(airportName)")
}

let airportCodes = Array(airports.keys)
let airportNames = Array(airports.values)

var namesOfIntegers = Dictionary<Int, String>()

namesOfIntegers[16] = "sixteen"
namesOfIntegers = [:]

// 类和结构体
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("the width of someResolution is \(someResolution.width)")
print("the width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("the width of someVideoMode is \(someVideoMode.resolution.width)")

let vga = Resolution(width: 640, height: 480)
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
print("cinema is now \(hd.width) pixels wide")

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("the frameRate property of tenEighty is now \(tenEighty.frameRate)")

if tenEighty === alsoTenEighty {
    print("====")
} else {
    print("!===")
}

// Properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6

class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("some data")
manager.data.append("some more data")
print(manager.importer.fileName)

// 计算属性

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point{
        get {
           let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set (newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
print("square.origin is now at(\(square.origin.x), \(square.origin.y))")
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at(\(square.origin.x), \(square.origin.y))")

// 属性控制器

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps){
          print("about to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("added \(totalSteps - oldValue) steps")
            }
        }
      
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 300


// 全局变量和局部变量

struct SomeStructure {
    
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 34
    }
}
enum SomeEnumeration {
    static var storedType = "some value "
    static var computedType: Int {
        return 34
    }
}

class SomeClass {
    class var computedType : Int {
        return 34
    }
}



