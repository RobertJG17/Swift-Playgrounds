//Comparison between if-else flow and switch statements to achieve the same objective.
//It's worth noting that I could have implemented a more efficient if-else block but as
//the code stands, the switch case wins in terms of efficiency and memory management as per
// LEET code diagnostics.


//For if-else code:
//
//Runtime: 28 ms, faster than 35.53% of Swift online submissions for Fizz Buzz.
//Memory Usage: 21.3 MB, less than 22.31% of Swift online submissions for Fizz Buzz.


//For switch code:
//
//Runtime: 20 ms, faster than 98.68% of Swift online submissions for Fizz Buzz.
//Memory Usage: 21.1 MB, less than 64.94% of Swift online submissions for Fizz Buzz.

//**Note: Although the perfomance gap seems wide, I noticed that running the same code several
//times resulted in very different performance benchmarks.

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
