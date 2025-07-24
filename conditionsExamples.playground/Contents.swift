import UIKit

let score = 70
if score > 60 { //kosul
    print("successful")
}

let speed = 120
let percentage = 80
let age = 20

if speed >= 80 {
    print("slow down")
}

if percentage < 90 {
    print("you failed the exam")
}

if age >= 18 {
    print("you can vote")
}

let ourName = "Bihter"
let friendName = "Osman"

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)") //alfabetik sira karsilastirmasi "b" "o"dan once gelir bu yuzden burada cikti alamadik
}

if friendName > ourName {
    print("It's \(ourName) vs \(friendName)")
}

var numbers = [2,5,7] //array olusturdum
numbers.append(4) //arraya bir deger ekledim
if numbers.count > 3 {
    numbers.remove(at: 0) //kosul -array 3'ten fazla deger bulunduruyorsa 0. indeksi sil-
}
print("Numbers: \(numbers)")

let country = "Canada"
if country == "Australia" {
    print("at")
}

let name = "Tayyare"
if name != "Anonymous"{
    print("Hi! \(name)")
}

var userName = "Utaritt" //burada bir kullanici adi olmasaydi ciktiyi Anonymous olarak gorecektik
if userName == "" { //bos string
    userName = "Anonymous"
}
print("Welcome! \(userName)")

if userName.count == 0 { //string uzunlugu sifirsa cikti Anonymous olur
    userName = "Anonymous"
}
print(userName)

if userName.isEmpty == true { //kontrol ettiğiniz şeyin içinde hiçbir şey yoksa true döndürür
    userName = "Anonymous"
}
print(userName)

if userName.isEmpty{
    userName = "Anonymous" //eger isEmpty true ise kosul gecer ve kullanici adi Anonymous olarak ayarlanir
}                          //aksi takdirde koşul başarısız olur
print(userName)

let firstName = "Berra"
let secondName = "Armutlu"

let firstNumber = 20
let secondNumber = 78

print(firstName == secondName)
print(firstName < secondName)
print(firstName != secondName)
print(firstName >= secondName)
// karsilastirma yapip sonucu yazdiriyoruz, if condition kullansaydik sonucu sadece yazdirmaz kullanadabilirdik
print(firstNumber == secondNumber)
print(firstNumber < secondNumber)
print(firstNumber != secondNumber)
print(firstNumber >= secondNumber)

enum Sizes: Comparable { // enumi siralanabilir hale getirdik, kiyaslamaya izin verdik
    case small, large, medium
}
let first = Sizes.small
let second = Sizes.medium
print(first < second)

let point = 80
if point >= 90 {
    print("You passed the exam")
}
else{
    print( "You failed the exam")
}

let a = false, b = true
if a {
    print("a dogru calisir")
}
else if b {
    print("a yanlis ama b dogruysa calisir")
}
else {
    print("a ve b yanlisken calisir")
}

let temp = 25
if temp > 20 {
    if temp < 30 {
        print("It is a comfortable temperature")
    }
}

if temp > 20 && temp < 30 { //ve
    print("it is a nice day")
}

let userAge = 17
let ebeveynOnayi = true
if userAge >= 18 || ebeveynOnayi { //veya
    print("you can buy the game")
}


enum TransportOpstion{
    case plane, helicopter, car, scooter, bicycle
}
 
let transport = TransportOpstion.plane
if transport == .plane, transport == .helicopter{
    print("Let's fly!")
}
else if transport == .bicycle{
    print("I hope there’s a bike path…")
}
else if transport == .car{
    print("Time to get stuck in traffic.")
}
else {
    print("I’m going to hire a scooter now!")
}

let scr = 201
if scr > 200 {
    print("It's over 200")
}
else if scr == 200{
    print("It's exactly 200")
}
else {
    print ("It's not over 200")
}

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.wind

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You are Batman")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me…") //fallthrough butun caselerin calismasini saglar, cok kullanilmaz
switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

let Age = 18
let canVote = Age >= 18 ? "Yes" : "No" // uclu operator  durum Age >= 18 ? kosul saglanirsa yes saglanmazsa no

//if else kullanarak canVote2 degiskenini yes ya da no esitleyecegim
var canVote2 = ""
if Age >= 18 {
    canVote2 = "yes"
}
else{
    canVote2 = "no"
}

let Names = ["Osman", "Bihter", "Ece"]
let crewCount = Names.isEmpty ? "No one" : " \(Names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)




