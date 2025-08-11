import UIKit

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    
    func printSummary() {
        print("\(title)( \(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
print(red.title) //album ismi verir
red.printSummary() //Album icinde tanimlanmis printSummary() fonksiyonunu cagirir

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) { //mutating degisime izin verir
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I am going on vacation")
            print("Days remaning: \(vacationRemaining)")
        } else {
            print ("There aren't enough days remaining")
        }
    }
}

var archer = Employee (name: "Archer", vacationRemaining: 20)
archer.takeVacation(days: 10)
print(archer.vacationRemaining)
archer.vacationRemaining -= 5
print(archer.vacationRemaining)
archer.vacationRemaining -= 3
print(archer.vacationRemaining)



struct Rectangle { //stored property
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}
var rect = Rectangle(width: 5.0, height: 10.0)
print("Area: \(rect.area())")
rect.width = 3.0
print("Area: \(rect.area())")



struct Rectangle1 {
    var width: Double
    var height: Double
    
    var area: Double { //computed property, gercekten area diye bir veri tutmaz. her cagirildiginda width * height tekrar hesaplanir
        return width * height //fonksiyon degil ama fonksiyon gibi calisir
    }
}

var rect1 = Rectangle1(width: 8.0, height: 19.0)
print("Area: \(rect1.area)")
rect1.width = 6.0
print("Area: \(rect1.area)")


struct Rectangle2 {
    var width: Double
    var height: Double
    
    var area: Double {
        get { //getter ve setter structta degiisklik yapmayi saglar. get degeri okur, set degeri degistirir(yazma islemi yapar)
            return width * height
        }
        set {
            width = newValue / height
        }
    }
}

var rect2 = Rectangle2(width: 6.0, height: 17.0)
print("Area: \(rect2.area)")
rect2.area = 60.0
print("Width: \(rect2.width), Height: \(rect2.height)")

struct Game {
    var score = 0 {
        didSet {
            print("Score: \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 5
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value is will be \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("Alice B")
app.contacts.append("Bob C")
app.contacts.append("David D")



struct Player {
    let name: String
    let number: Int
    
    init (name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
let player = Player(name: "Garry D")
print(player)


struct Employee1{ //otomatik initializer
    var name: String //deger girilmek zorunda
    var yearsActive = 0 //varsayilan degeri var
}
let roslin = Employee1(name: "Laura Roslin") // sadece ismi veriyoruz, yearsActive otomatik 0 oluyor
let adama = Employee1(name: "William Adama", yearsActive: 45) // ikisini de veriyoruz


struct Employee2 {
    var name: String
    var yearsActive = 0
    
    init() { //burada artik swiftin bize verdigi otomatik initializer ortadan kalkiyor
        self.name = "Anonymous"
        print("Creating n anonymous employee")
    }
}

struct Employee3 {
    var name: String
    var yearsActiv = 0
}

extension Employee3 { //otomatik initializer ile beraber kullanmak icin kendi init()'imizi extension icine koyariz
    init() {
        self.name = "Anonymous"
        print("Creating n anonymous employee")
    }
}

let rsln = Employee3(name: "Laura Roslin") //otomatik olan
let anon = Employee3() // bizim yazdigimiz init()


struct Student {
    var name: String
    var bestFriend: String
    
    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class ")
        self.name = name //burada name: fonksiyona geleln parametre, self.name: struct icindeki property
        self.bestFriend = bestFriend //self.name = name kullanimasinin sebebi swift ikisinin ayni olduugunu bilemez
    }
}


struct Student1 {
    var name: String
    var bestFriend: String
    
    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class")
        name = studentName //parametre isimleri farkli oldugundan self kullanmadik 
        bestFriend = studentBestFriend
    }
}
