import UIKit

enum CalculatingError: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000{
        throw CalculatingError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw CalculatingError.noRoot
}

let number = 4
do {
    let result = try squareRoot(number)
    print ("Square: \(result)")
} catch CalculatingError.outOfBounds {
    print("Error: Number must be between 1 and 10.000 ")
} catch CalculatingError.noRoot {
    print("Error: No square root found")
} catch {
    print("An unexpected error occurred: \(error)")
}
