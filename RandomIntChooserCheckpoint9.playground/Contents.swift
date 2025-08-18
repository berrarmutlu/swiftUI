import UIKit
 
func randomInt(from array: [Int]?) -> Int {
    array?.randomElement() ?? (1...100).randomElement()!
}
print(randomInt(from: [20, 30, 40]))
print(randomInt(from: nil))
print(randomInt(from: []))
