import UIKit

func isPalindrome(_ s: String) -> Bool {
    var sCopy = s.filter { $0.isLetter || $0.isNumber }
    sCopy = sCopy.lowercased()
    
    return sCopy == String(sCopy.reversed())
}

print(isPalindrome("A man, a plan, a canal: Panama"))
print(isPalindrome("0P"))
