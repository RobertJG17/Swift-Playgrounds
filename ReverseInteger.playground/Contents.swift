import UIKit

func reverse(_ x: Int) -> Int {
    var num = abs(x)
    var reversedInt = 0

    if x == 0 { return 0 }
    
    while num % 10 == 0 { num /= 10 }
    
    let numAsString = String(num)
    let reversedString = String(numAsString.reversed())
    
    switch x < 0 {
    case true:
        reversedInt = -1 * Int(reversedString)!
    case false:
        reversedInt = Int(reversedString)!
    }
    
    if reversedInt > 2147483647 || reversedInt < -2147483648 { return 0 }
    
    return reversedInt
}


print(reverse(123))
print(reverse(120))
print(reverse(-122222))
print(reverse(0))
print(reverse(2147483647))
print(reverse(2147483648))
print(reverse(1534236469))

