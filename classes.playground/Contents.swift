import UIKit

class Game {
    var score = 0 {
        didSet { //score degeri degistiginde calisir
            print("Score: \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee { //temel sinif
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}

class Developer: Employee { //employee classindan turemis
    func work() {
        print("I am writing code for \(hours) hours")
    }
    
    override func printSummary() { //printSummary fonksiyonunu override etmis yani kendi versiyonunu yazdiriyor
        print("I'm a developer who will sometimes work \(hours) hours a day")
    }
}

class Manager: Employee { //employee classindan turemis, printSummary fonk override etmedigi icin direkt printSummary fonk kullanir
    func work(){
        print("I am going to meetings for \(hours) hours")
    }
}

let osman = Developer(hours: 8)
let kubilay = Manager(hours: 5)
let novall = Developer(hours: 10)
osman.work() //work fonk cagirilir (developer)
kubilay.work() //work fonk cagirilir (manager)
novall.printSummary() //override printSummary fonk cagirilir (developer)


class Vehicle { //ust sinif
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle { //turemis
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric) //ust sinifin initializerini cagirip onu kullaniyor
    }
}

let teslaX = Car(isElectric: true, isConvertible: false) //nesne olusturma


class User {
    var username = "Anonymous"
    
    func copy() -> User{
        let user = User() //yeni user nesnesi yarat
        user.username = username //username degerini kopyala
        return user
    }
}
var user1 = User() //username = "Anonymous"
var user2 = user1.copy() //user1'in bagimsiz kopyasi olusturuluyor, user2 user1'den tamamen ayri farkli bir user nesnesi olmus oldu
user2.username = "Seftali" //bu degisiklik sadece user2 nesnesinde olur

print(user1.username)
print(user2.username)


class Usser {
    let id: Int
    
    init(id: Int){ //nesen olusturulurken cagirilir
        self.id = id
        print("user \(id): I'm alive")
    }
    
    deinit { //nesne yok edilirken cagirilir
        print("user \(id): I'm dead")
    }
}

var users = [Usser] () //users arrayi nesnelere referans tuttugu surece nesneler silinmez
for i in 1...3 {
    let user = Usser (id: i) //yeni Usser nesnesi, id = i for dongusu uc tane nesne olusturacak
    print("User \(user.id): I'm in control ")
    users.append(user) //nesneyi arraya ekledik
}
print("loop is finished")
users.removeAll() //arraydeki butun nesneleri sildik, arrayde referans kalmadi, burada deinit cagirilir
print("array is clear")
