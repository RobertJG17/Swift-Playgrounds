//Container With Most Water
//
//Given n non-negative integers a1, a2, ..., an , where each represents a point at
//coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line
//i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container,
//such that the container contains the most water.

import UIKit

func maxArea(_ height: [Int]) -> Int {
    
    var products = [Int] ()
    var numOfInterest: Int
    var difference: Int
    var heightCopy = height
    
    while !heightCopy.isEmpty {
        numOfInterest = heightCopy.remove(at: 0)
        difference = 1
        for num in heightCopy {
            products.append(min(numOfInterest, num) * difference)
            difference += 1
        }

        if heightCopy.count == 1 {
            break
        }
    }
    
    //Since function specifies definitive return value,
    //we must return 0 as apposed to nil if the height
    //list is empty.
    if height.isEmpty { return 0 }
    
    return products.max()!
}

print(maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]))
print(maxArea([5, 1, 3, 4, 2, 6]))
print(maxArea([1, 500,000, 6, 2, 5, 4, 8, 3, 7]))
print(maxArea([]))
print(maxArea([4, 4, 4, 4]))
print(maxArea([1, 1]))
print(maxArea([1, 2, 1]))
print(maxArea([3, 6, 5, 4]))


