import UIKit


func singleNumber(_ nums: [Int]) -> Int {
    var numDict = [Int: Bool]()
    
    for num in nums {
        var single = true
        if numDict.keys.contains(num) { single = false }
        numDict.updateValue(single, forKey: num)
    }
    
    // Using .first method and generic type to filter for true and return corresponding key
    guard let number = numDict.first(where: { $0.value == true })?.key else { return 0 }
    
    return number
}

print(singleNumber([1, 2, 1, 2, 4]))
print(singleNumber([1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 1, 2, 1, 2, 4, 5]))
