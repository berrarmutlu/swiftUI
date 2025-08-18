import UIKit

protocol Vehicle { //Vehicle protocolu tanimi
    var name: String { get } //sadece okunabilir property
    var currentPassengers: Int { get set } //okunup yazilabilir property
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle { //Car structi Vehicle protocolune uyuyor
    let name = "Car"
    var currentPassengers = 2
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle{ //Bicycle structi Vehicle protocolune uyuyor
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}


func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I will try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km. ")
    }
}

let car = Car()
let bike = Bicycle()

commute(distance:100, using: car)
commute(distance:50, using: bike)

getTravelEstimates(using : [car,bike], distance: 150)


