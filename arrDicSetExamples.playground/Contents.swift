import UIKit

var animals = ["cat", "dog", "bird"]
let numbers = [1, 2, 3, 4, 5]
let temp = [28.4, 29.2, 30.1]

print (animals [1])
print (numbers [0])
print (temp [2])

animals.append("snake") //Dizi değişkense oluşturduktan sonra değiştirilebilir, yeni oge eklemek icin .append() kullaniriz
                        //append() sirali yapilar icindir
var scores = Array<Int>()
scores.append(45)
scores.append(89)
scores.append(67)

var albums = [String]() //Array<String> yazmak yerine [String] yazabiliriz (array oluşturma)
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var characters = ["Arya", "Jhon", "Claire"]
print(characters.count)

characters.remove(at: 1)
print(characters)
//remove(at:) ve removeAll() belirli bir ogeyi silmek ve butun ogeleri silmek icin kullanılırlar
characters.removeAll()
print(characters)

let cities = ["New York", "Los Angeles", "Chicago"]
print(cities.contains("New York"))

let movies = ["Frozen", "The Lion King", "Moana"]
print(movies.sorted())

let fruits = ["apple", "orange", "banana", "pear"]
let reversetFruits = fruits.reversed()
print(reversetFruits)

let person = [  //dictionary
    "name": "John",
    "job": "Software Engineer",
    "location": "New York"
]

print(person["name", default: "Unknown"])
print(person["job", default: "Unknown"])
print(person["age", default: "Unknown"])

var age = [String: Int]() //empty dictionary
age["Pitkinaz"] = 22
age["Cirriksu"] = 45
age["Cincik"] = 29

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin" //degeri yeniden yazdik

let results = [
    "english": 90,
    "math": 85,
    "history": 92
]
let geographyResult = results["geography", default: 0]

let people = Set(["Mecnun", "Leyla", "Erdal"])
print(people)

var ppl = Set<String>()
ppl.insert("Mecnun") //insert, append() gibi oge ekler ama ogeleri istedigi sirada saklar
ppl.insert("Leyla")
ppl.insert("Erdal")
print(ppl)

