import UIKit

func longestValidParentheses(_ s: String) -> Int {
    var subCount = [Int]()
    var count = 0
    let array = Array(s)
    var valid = false
    var index = 0
    
    if s == "" { return 0 }
    
    for char in array {
        if char == ")" && valid {
            valid = false
            count += 2
            if index != array.count - 1 {
                index += 1
                continue
            }
        }
        
        if char == "(" && !valid {
            valid = true
            if index != array.count - 1 {
                index += 1
                continue
            }
        }
        index += 1
        subCount.append(count)
        count = 0
    }
    
    return subCount.max()!
}

print(longestValidParentheses("(()"))
print(longestValidParentheses("(())()())"))
print(longestValidParentheses(""))
print(longestValidParentheses("))((((()()()()()()()()()()))))()((()())))())((()())()()()()()()"))
