import UIKit

func favoriteAlbum(name: String) {
    print("My Favorite is \(name)")
}

favoriteAlbum(name: "Fearles")


func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
    
}

printAlbumRelease(name: "Fearless", year: 1991)


func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters")
}

countLettersInString("hello")

func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}


print(albumIsTaylor(name: "Red"))

func getHaterStatus(_ weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

print(getHaterStatus("Hate") ?? "")

var status: String?
status = getHaterStatus("rainy")

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(String(describing: year))")
}

//struct Person {
//    var clothes: String
//    var shoes: String
//
//
//    func describe() {
//        print("I like wearing \(clothes) with \(shoes)")
//    }
//}

//let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
//let other = Person(clothes: "short skirts", shoes: "high heels")
//
//var taylorCopy = taylor
//taylorCopy.shoes = "flip flops"
//
//print(taylor)
//print(taylorCopy)

//taylor.describe()

class Person {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}


class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}
class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylor = CountrySinger(name: "Taylor", age: 25)
taylor.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}
