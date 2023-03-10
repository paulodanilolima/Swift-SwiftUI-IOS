import UIKit

struct Sport{
    var name: String
    var isOlympicSport: Bool
    
    var olympingSport: String{
        if isOlympicSport {
            return "\(name) is an Olympic sport"

        }else{
            return "\(name) is not an Olympic sport"

        }
    }
}

var tennis = Sport(name: "Tennis", isOlympicSport: true)
print(tennis.name)

tennis.name = "Lawn Tennis"

print(tennis.name)
print(tennis.olympingSport)


struct Progress{
    var task: String
    var amount: Int{
    didSet{
        
        print("\(task) is now \(amount)%")
    }
        
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct City {
    var population: Int

    func collectTaxes() -> Int{
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()
print(person.name)

let string = "Do or do not, there is no try."
print(string.count)

print(string.hasPrefix("Do"))

print(string.uppercased())
print(string.sorted())

var toys = ["Woody"]
toys.append("Buzz")

toys.firstIndex(of: "Buzz")
print(toys.sorted())

toys.remove(at: 0)



