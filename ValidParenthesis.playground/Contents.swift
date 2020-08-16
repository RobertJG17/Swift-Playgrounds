import UIKit

func isValid(_ s: String) -> Bool {
    guard !s.isEmpty else { return true }
    guard s.count % 2 == 0 else { return false }
    var valid = true
    
    let stringCount = s.count
    let sArray = Array(s)
    let charDict = ["{": "}", "[": "]", "(": ")"]
    
    for i in 0...((stringCount / 2) - 1) {
        let char1 = String(sArray[i])
        let char2 = String(sArray[i + 1])
        let char3 = String(sArray[stringCount - (i + 1)])
//        print(char1, char2, char3)
        if charDict[char1] != char2 && charDict[char1] != char3 {

            if i != 0 {
                let char4 = String(sArray[i - 1])
                if char1 != charDict[char4] {
                    valid = false
                    return valid
                }
            } else {
                valid = false
                return valid
            }
        }
    }
    
    return valid
}

print("1: \(isValid("()"))\n")
print("2: \(isValid("()[]{}"))\n")
print("3: \(isValid("(]"))\n")
print("4: \(isValid("([)]"))\n")
print("5: \(isValid("{[]}"))\n")

