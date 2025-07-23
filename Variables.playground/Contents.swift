import UIKit

var greeting = "Hello, playground"
var name = "Osman"
name = "Bihter"
name = "Pitkinaz"

let at = "kravatli esek"

var playerName = "Cirriksu"
print (playerName)

var favoriteSeries = "Game of Thrones"
favoriteSeries = "Black Mirror"

let kisi = "tayyare"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(kisi.count)

let nameLenght = kisi.count
print(nameLenght)

print(kisi.uppercased())

print(movie.hasPrefix("A day"))

print(movie.hasSuffix("Apple engineer"))
print(movie.hasSuffix(".jpg"))

let number = 100

let lowerNumber = number - 2
let higherNumber = number + 10
let doubledNumber = number * 2
let squaredNumber = number * number
let halvedNumber = number / 2
print(number)

var sayac = 20
sayac = sayac + 4
sayac = sayac - 4
sayac = sayac / 2
sayac = sayac * 8
print(sayac)

sayac += 4
print(sayac)

sayac -= 4
print(sayac)

sayac /= 2
print(sayac)

sayac *= 8
print(sayac)

let say = 175
print(say.isMultiple(of: 3))
print(say.isMultiple(of: 5))


let a = 1
let b = 2.0
let c = a + Int(b)

let x = 5
let y = 8.5
let z = Double(x) + y

let double1 = 4.2
let double2 = 2323.2323
let double3 = 9.0
let int1 = 6

let uglyHorse = true
let isMultiple = 120.isMultiple(of: 3)

var kopek = true
kopek = !kopek
kopek = !kopek

var kedi = false
print(kedi)

kedi.toggle()
print(kedi)


let firstPart = "hello"
let secondPart = "world"
let Greeting = firstPart + " " + secondPart

let people = "haters"
let action = "hate"
let lyrics = people + " " + "gonna" + " " + action

let isim = "Berra"
let yas = 19
let bilgi = "merhaba, benim adim \(isim) ve yasim \(yas)."

let abc = 11
let missionMessage = "Apollo " + String(abc) + " landed on the moon."

print ("5x5 is \(5*5)")

var city = "Istanbul"
var message = "Welcome to \(city)"
