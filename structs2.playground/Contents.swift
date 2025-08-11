import UIKit

struct BankAccount {
    private(set) var funds = 0 //disariya sadece okuma izni verildi, yalnizca struct icindeki fonksiyonlar degistirebilir
    
    mutating func deposit (amount: Int) {
        funds += amount
    }
    mutating func withdraw (amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)
print(success)
print(account.funds)


//struct School {
//    static var studentCount = 0
//
//    static func add(student: String) {
//        print("\(student) joined the school.")
//        studentCount += 1
//    }
//}
//School.add(student: "Ali")
//print(School.studentCount)

