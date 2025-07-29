import UIKit

func printTimesTables (number: Int) {
    for i in 1...10 {
      print("\(i) x \(number) = \(i * number)")
    }
}
printTimesTables(number: 3)
print()
func printTimesTables1 (number: Int, end: Int) { //fonksiyonun parametreleri
    for i in 1...end {
        print("\(i) x \(number) = \(i * number)")
    }
}
printTimesTables1(number: 3, end: 8)

func rollDice() -> Int { //-> Int fonksiyon calisinca tam sayi dondurecek anlamina gelıyor
    return Int.random(in: 1...6)
}
let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    return(string1.sorted() == string2.sorted())
}

func pythagoras (a: Double, b: Double) -> Double {
    sqrt (a * a + b * b)  //let input =  a * a + b * b
                         //let root = sqrt(input)
                        //return root
}
let c = pythagoras(a: 3, b: 4)
print(c)


func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}


func greet(name: String)-> String {
    if name == "John" {
        "Hello, John!" //return kullanmadik cunku her dalda sadece tek bir ifade var
    } else {
        "Hi there!"
    }
}


func greet1(name: String)-> String {
    let response = if name == "Kate" { // deger donduruyor ve bu deger dogrudan degiskene ataniyor
        "Hello, Kate!"
    } else {
        "Hi! \(name)"
    }
    return response
}


func greet2(name: String)-> String {
    let response = name == "Kate" ? "Hello, Kate!": "Hi \(name)" //ternary conditional operator versıon
    return response
}


