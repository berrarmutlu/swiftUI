import UIKit

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi: Woo Woof!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle: Arf Arf!")
    }
}


class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak(){
        print("Meow!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion: Roar!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian: Meow!")
    }
}


let corgi = Corgi(legs: 4)
corgi.speak()

let poodle = Poodle(legs: 4)
poodle.speak()

let lion = Lion(isTame: false)
lion.speak()
print(lion.isTame)

let persian = Persian(isTame: true)
persian.speak()
print(persian.isTame)
