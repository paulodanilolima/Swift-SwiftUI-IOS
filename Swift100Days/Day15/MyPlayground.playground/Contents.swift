import UIKit

//struct Person {
//    var clothes: String {
//        willSet {
//            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
//        }
//
//        didSet {
//            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
//        }
//    }
//}
//
//func updateUI(msg: String) {
//    print(msg)
//}
//
//var taylor = Person(clothes: "T-shirts")
//taylor.clothes = "short skirts"


//struct Person {
//    var age: Int
//
//    var ageInDogYears: Int {
//        get {
//            return age * 7
//        }
//    }
//}
//
//var fan = Person(age: 25)
//print(fan.ageInDogYears)
//
//
//struct TaylorFan {
//    static var favoriteSong = "Look What You Made Me Do"
//
//    var name: String
//    var age: Int
//}
//
//let fan1 = TaylorFan(name: "James", age: 25)
//print(TaylorFan.favoriteSong)

//class TaylorFan {
//    private var name: String?
//}

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

var allAlbums: [Album] = [taylorSwift, fearless]

for album in allAlbums {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}

for album in allAlbums as! [StudioAlbum] {
    print(album.studio)
}

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

let message = "Button pressed"

