import UIKit

/// FizzBuzz using continuous string appends
/// - Parameter n: The number we wish to stop at
/// - Returns: A collection of strings that are either numbers or some combination of FizzBuzz
func fizzBuzz(_ n: Int) -> [String] {
    var returnValues = [String]()
    for i in 1...n {
        var str = ""
        if i % 3 == 0 {
            str += "Fizz"
        }
        if i % 5 == 0 {
            str += "Buzz"
        }
        if str == "" {
            str += "\(i)"
        }
        returnValues.append(str)
    }
    return returnValues
}


/// FizzBuzz using switch cases
/// - Parameter n: The number we wish to stop at
/// - Returns: A collection of strings resulting in any of the cases below
func fizzBuzzTwo(_ n: Int) -> [String] {
    var returnValues = [String]()
    for num in 1...n {
        switch(true) {
        case num % 15 == 0:
            returnValues.append("FizzBuzz")
        case num % 3 == 0:
            returnValues.append("Fizz")
        case num % 5 == 0:
            returnValues.append("Buzz")
        default:
            returnValues.append("\(num)")
        }
    }
    return returnValues
}

print(fizzBuzz(100), "\n")
print(fizzBuzzTwo(100), "\n")
