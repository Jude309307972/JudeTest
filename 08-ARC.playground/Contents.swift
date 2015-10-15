//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    var apartment: Apartment?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let number: Int
    init(number:Int) {
        self.number = number
    }
    weak var tenant: Person?
    deinit { print("apartment \(number) is being deinit")}
}


var john: Person?
var number73: Apartment?

john = Person(name: "John applesed")
number73 = Apartment(number: 73)

john!.apartment = number73
number73!.tenant = john

john = nil
number73 = nil

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {print("\(name) is being deinit")}
}

class CreditCard {
    let number: Int
    unowned let cuetomer:Customer
    init (number: Int, customer: Customer){
        self.number = number
        self.cuetomer = customer
    }
    deinit {print("car \(number) is being deinit")}
}

var jude: Customer?
jude = Customer(name: "jude")
jude!.card = CreditCard(number: 1234, customer: jude!)

jude = nil


//class Country {
//    let name: String
//    let capitalCity: City!
//    init(name: String, capitalCity: String){
//        self.name = name
//       // self.capitalCity = City(name: capitalCity, country: self)
//    }
//}
//
//class City {
//    let name: String?
//    unowned let country:Country
//    init (name: String, country: Country) {
//        self.name = name
//        self.country = country
//    }
//}

// 闭包

class HTMLElement {
    
    let name: String
    let text: String?
    lazy var asHTML:() -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name) > \(text)</ \(self.name)"
        } else {
            return "<\(self.name) />"
        }
    }
    
    init (name: String, text:String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinit")
    }
}

var pagegraph: HTMLElement? = HTMLElement(name: "p", text: "hello,world")
print(pagegraph!.asHTML())
pagegraph = nil





