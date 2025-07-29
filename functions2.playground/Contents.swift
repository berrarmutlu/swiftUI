import UIKit

func printTimesTables(for number: Int, end: Int = 12) { //end kaca kadar yazilacagina karar veriyoruz, end olmazsa otomatik olarak 12y kadar yazar
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20) //fonk cagirma 5in carpim tablosunu 20ye kadar yaz
printTimesTables(for: 8) //end olmazsa 8in carpim tablosunu 12ye kadar yazdirir

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count) //arrayde kac eleman oldugunu yazdirir
characters.removeAll(keepingCapacity: true) //elemanlari siler ama keepingCapacity: true ile dizi tamamen sifirlanmadi  yani tamamen yok olmadi
print(characters.count)


enum PasswordError: Error {
    case short,obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "GOOD"
    } else {
        return "VERY GOOD"
    }
}

let string = "12345"
do {   //hata olabilecek bir kod bloguna baslandi
    let result = try checkPassword(string)   //fonksiyonda hata olabilecegi icin try ile cagirilir
    print ("Password rating: \(result)")
} catch { //hata olursa bu kisim calisir
    print ("Error: \(error)")
}

let a = "12345"
do {
    let result = try checkPassword(a)
    print ("Password rating: \(result)")
} catch PasswordError.short {
    print ("Password is too short")
} catch PasswordError.obvious {
    print ("Password is too obvious")
} catch {
    print ("There was an error.")
}
