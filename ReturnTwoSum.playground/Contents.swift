import UIKit

// first attempt

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var tuples = [(number: Int, index: Int)]()
//    var index = 0
//    var matchIndex: Int
//
//    for num in nums {
//        tuples.append((num, index))
//        index += 1
//    }
//
//
//
//    for item in tuples {
//        print(tuples)
//        if nums.contains(target - item.number) {
//            matchIndex = nums.lastIndex(of: target - item.number)!
//            if item.index == matchIndex { continue }
//            return [item.index, matchIndex]
//        }
//
//        tuples = tuples.filter { $0.number != item.number }
//    }
//
//    return []
//}

//print(twoSum([1, 2, 2, 3, 4, 5, 6, 5], 7))
//print(twoSum([2, 2, 1, 3, 4, 5, 6, 5], 4))
//print(twoSum([3, 2, 4], 6))


// second attempt

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var index = 0
//    var firstIndex: Int
//    var matchIndex: Int
//
//    for num in nums {
//        if nums.contains(target - num) {
//            firstIndex = nums.firstIndex(of: num)!
//            matchIndex = nums.lastIndex(of: target - num)!
//            if firstIndex == matchIndex { index += 1; continue }
//            return [firstIndex, matchIndex]
//        }
//        index += 1
//    }
//
//    return []
//}


func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    var index = 0
    
    for num in nums {
        dict.updateValue(index, forKey: num)
        index += 1
    }
    print(dict)
    for num in nums { 
        let complement = target - num
        if dict.keys.contains(complement) && dict[num] != dict[complement] {
            return [dict[num]!, dict[complement]!]
        }
    }
    
    return []
}


//print(twoSum([2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 7], 10))
//print(twoSum([1, 2, 2, 3, 4, 5, 6, 5], 7))
//print(twoSum([2, 2, 1, 3, 4, 5, 6, 5], 4))
//print(twoSum([3, 2, 4], 6))
//print(twoSum([10000000, 20000000, 30, 57, 54, 64, 53, 23, 121, 200, 2, 3, 4, 5], 7))
//print(twoSum([0, 4, 3, 0], 0))
//print(twoSum([-3, 4, 3, 90], 0))
//print(twoSum([-1, -2, -3, -4, -5], -8))
print(twoSum([2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 3, 3 ,3, 3, 3, 6], 9))
