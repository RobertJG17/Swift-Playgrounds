import UIKit

func myAtoi(_ str: String) -> Int {
    
    var temp = str.filter { !$0.isWhitespace }
    temp = temp.filter { $0 != "+" }
    
    if temp.isEmpty { return 0 }
    
    let slice = temp.index(temp.startIndex, offsetBy: 1)
    let newStr = String(temp[..<slice])
    
    if newStr != "-" {
        guard let _ = Int(newStr) else { return 0 }
    }
        
    temp = temp.trimmingCharacters(in: .letters)
   
    let integer = Int(floor(Double(temp) ?? 0))
    
    if integer > INT_MAX { return Int(INT_MAX) }
    if integer < -INT_MAX - 1 { return -Int(INT_MAX) - 1 }
    
    return integer
}


print(myAtoi("   -42 the sheep"))
print(myAtoi("the sheep 44"))
print(myAtoi("432154 Biggus yeetus"))
print(myAtoi("-2147483649"))
print(myAtoi("3.14"))
print(myAtoi("-"))
print(myAtoi("+23"))
print(myAtoi("+"))

