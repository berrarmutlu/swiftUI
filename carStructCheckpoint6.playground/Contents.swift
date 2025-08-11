import UIKit

//struct Car {
//    let model: String //sabit
//    let numberOfSeats: Int //sabit
//    private(set) var currentGear: Int = 1
//
//    mutating func gearUp() {
//        if currentGear < 10 {
//            currentGear += 1
//        }
//    }
//
//    mutating func gearDown() {
//        if currentGear > 1 {
//            currentGear -= 1
//        }
//    }
//
//    func getCurrentGear() -> Int {
//        return currentGear
//    }
//
//    func printInfo() {
//        print("Model: \(model), Seats: \(numberOfSeats), Current Gear: \(currentGear)")
//    }
//}
//
//var car = Car(model: "Audi", numberOfSeats: 4)
//print(car)
//car.gearUp()
//print(car.getCurrentGear())




struct Car {
    let model: String
    let numberOfSeats: Int
    private var currentGear: Int
    
    init(model: String, numberOfSeats: Int, currentGear: Int = 1){ // baslangic degerleri
        self.model = model
        self.numberOfSeats = numberOfSeats
        
        if currentGear < 1 {
            self.currentGear = 1
        }
        else if currentGear > 10 {
            self.currentGear = 10
        }
        else {
            self.currentGear = currentGear
        }
    }
    
    mutating func gearUp() {
        if currentGear < 10 {
            currentGear += 1
        }
    }
    
    mutating func gearDown() {
        if currentGear > 1 {
            currentGear -= 1
        }
    }
    
    func getCurrentGear() -> Int {
        return currentGear
    }
    
    func printInfo() {
        print("Model: \(model), Seats: \(numberOfSeats), Current Gear: \(currentGear)")
    }
    
}

var car = Car(model: "Audi", numberOfSeats: 4)
print(car)
car.gearUp()
print(car.getCurrentGear())
car.gearUp()
print(car.getCurrentGear())
car.gearUp()
print(car.getCurrentGear())
car.gearDown()
print(car.getCurrentGear())
