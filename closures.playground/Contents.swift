import UIKit

let sayHello = { (name: String) -> String in
    "Hello, \(name)!"
}

func getUserData (_ id: Int) -> String { //fonksiyon
    if id == 1989 {
        "Taylor Swift"
    } else {
        "Anonymous"
    }
}

let data: (Int) -> String = getUserData //fonksiyonu bir degiskene verdim
let user = data(1989)
print(user)

sayHello("Taylor")

let data1: (Int) -> String = { id in //closure version
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}



let team = ["Gloria", "Tiffany", "Suzanne"] //array olusturma
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1: String, name2: String) -> Bool{ //fonksiyon
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted) //fonksiyon kullanarak siralama
print(captainFirstTeam)


let captainFirstTeam1 = team.sorted { name1, name2 in //closure version, trailing closure
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1<name2
}



let payment = {(user: String) in //parametre var ama hicbir sey dondurmuyor
    print("paying \(user)")
}

let payment1 = { (user: String) -> Bool in //parametre var ve boolean degeri donduruyor
    print("paying \(user)")
    return true
}

let payment2 = { () -> Bool in //parametre yok ama boolean degeri donduruyor
    print("Paying an anonymous person…")
    return true
}



let myFriends = ["Gloria", "Piper", "Tasha", "Suzanne"]

let prioritizedList = myFriends.sorted { //Shorthand closure syntax
    if $0 == "Piper" {
        return true
    } else if $1 == "Piper" {
        return false
    }
    return $0 < $1
}

let reverseFriends = myFriends.sorted {$0 > $1}

let tOnly = myFriends.filter {$0.hasPrefix("T")}
print(tOnly)

let uppercaseFriends = myFriends.map { $0.uppercased()}
print(uppercaseFriends)



func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) { //first, second, third hicbiri parametre almiyor ve deger dondurmuyor
    print("About to start first work")                                           //ve iceride fonksiyonlari cagiriyor
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork { //burada 3 closure gonderiyoruz, ilki icin paranteze gerek yok ama devami icin parantez kullanmak zorundayiz
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

