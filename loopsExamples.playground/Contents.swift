import UIKit

let animals = ["dog", "cat", "bird", "fish"]

for animal in animals {
    print("animals: \(animal)")
}

for i in 1...12{ //1...12 araligi
    print("5 x \(i) is \(5*i)")
}

for i in 1...10{
    print("the \(i) times table:")
    
    for j in 1...10{
        print(" \(j) * \(i) is \(j*i)")
    }
    print()
}

for i in 1...3{ //1'den 3'e kadar sayar, 3 dahil olur
    print("counting from 1 though 3: \(i)")
}

for i in 1..<3{ //1'den 3'e kadar sayar ancak ..< 3'u dahil etmez
    print("counting 1 up to 3: \(i)")
}

var lyric = "haters gonna"
for _ in 1...2{ //burada i veya dongu degiskeni kullanmadik cunku burada sayilar onemli degil ya da adlandirmaya gerek yok
    lyric += " hate" //eger kullansaydik bu bellekte yer tutardi, iceride herhangi bir sey kullanmadigimiz icin bunu yapmamiza gerek yok
}
print(lyric)

let names = ["Lana", "Ray", "Ethan"]
for name in names { //Her ismi sirayla al, name degiskeniyle kullan
    print("\(name) is a secret agent")
}
for _ in names { //Her ismi gor ama icerigiyle ilgilenme, sadece tekrar sayisi kadar don
    print("[?] is a secret agent")
}
print(names[0])
print(names[1...2])
print(names[0...2])
print(names[1...])

var countDown = 10
while countDown > 0 {
    print("\(countDown)")
    countDown -= 1
}
print("Blast Off!")

let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...3)

var roll = 0
while roll != 10 {
    roll = Int.random(in: 1...10)
    print("I rolled a \(roll)")
}
print("critical hit!")

let fileNames = ["me.txt", "cat.png", "bird.mp3"]
for fileName in fileNames {
    if fileName.hasSuffix(".txt") == false {
        continue
    }
    print(fileName)
}

let number1 = 2
let number2 = 7
var multiples: [Int] = []
for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        
        if multiples.count == 10{
            break
        }
    }
}
print(multiples)

let scores = [1,3,4,0,5,8,6]
var count = 0
for score in scores {
    if score == 0 {
        break
    }
    count += 1
}
print("0 puan almadan once \(count) puanin vardi")


let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outherLoop: for option1 in options{
    for option2 in options{
        for option3 in options{
            print("in loop")
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination{
                print("the combination is \(attempt)")
                break outherLoop
            }
        }
    }
}
