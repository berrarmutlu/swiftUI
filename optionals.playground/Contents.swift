import UIKit

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is: \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user \(unwrappedName)")
} else {
    print("The optional is empty")
}

func square (number: Int) -> Int {
    number * number
}

var number: Int? = nil //Int? optional

if let number = number { //unwrap, bu satir icinde number artik normal bir Int (non-optional)
    print(square(number: number))
}


func printSquare(of number: Int?) {
    guard let number = number else { //myVar 3 oldugu icin nil degil bu yuzden else blogu calismadi, islem yapildi
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}
var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")
}
printSquare(of: myVar)

let captains = [
    "Enterprise": "Picard",
       "Voyager": "Janeway",
       "Defiant": "Sisko"
]
let new = captains["Serenity"] ?? "N/A" //nil coalescing operator, eger deger varsa onu new icine atar eger nil'se "N/A" degerini kullanir


let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None" //randomElement() metodu bos array olabilecegi icin optional doner


let names = ["Bran", "Arya", "Sansa", "Jon"]
let chosen = names.randomElement()?.uppercased() ?? "No one" //optional chaning, eger deger yoksa hicbir sey olmaz ve nil doner
print("Next in line: \(chosen)") //bu nedenle sonrasinda nil coalescing kullanmak gerekir


struct Book {
    let title: String
    let author: String?
}
//eger bir kitap varsa, kitap bir yazara sahipse ve yazarin ilk harfi varsa, onu buyuk harfe cevir ve geri gonder. yoksa "A" kullan
var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}
if let user = try? getUser(id: 1) {
    print("User: \(user)")
}
