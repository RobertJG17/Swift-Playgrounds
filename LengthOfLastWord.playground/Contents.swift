import UIKit

func lengthOfLastWord(_ s: String) -> Int {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let strCopy = s.lowercased()
    var strArray = strCopy.components(separatedBy: " ")
    
    for word in strArray {
        if (word.rangeOfCharacter(from: CharacterSet(charactersIn: alphabet).inverted) != nil) {
            let index = strArray.firstIndex(of: word)!
            strArray.remove(at: index)
        }
    }
    
    print(strArray)
    
    return strArray.popLast()?.count ?? 0
}

print(lengthOfLastWord("The cat goes moo!"))
print(lengthOfLastWord("Hello World"))
print(lengthOfLastWord("a"))
