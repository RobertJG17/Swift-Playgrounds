//Container With Most Water
//
//Given n non-negative integers a1, a2, ..., an , where each represents a point at
//coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line
//i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container,
//such that the container contains the most water.

import UIKit

func maxArea(_ height: [Int]) -> Int {
    
    var maxProducts = [Int]()
    var iterator = 0
    
    //Ensuring the list is not empty
    if height.isEmpty { return 0 }
    
    //Ensuring the list does not contain all of the same value (if let unwrap block will not execute)
    let heightSet = Set(height)
    if heightSet.count == 1 {
        return (height.count - 1) * height[0]
    }
    
    //Once the two conditions above have been checked, the code can run normal operations
    while iterator < height.count {
        let numOfInterest = [height[iterator], iterator]
        var products = [Int]()
        
        for num in height {
            if let index = height.firstIndex(of: num) {
                if [num, index] == numOfInterest {
                    continue
                }

                products.append(abs(min(numOfInterest[0], num) * (index - numOfInterest[1])))
            }
        }
        maxProducts.append(products.max()!)
        iterator += 1
        print(height)
    }
    
    return maxProducts.max()!
}

print(maxArea([1, 8, 6, 2, 5, 4, 8, 3, 7]))
//print(maxArea([5, 1, 3, 4, 2, 6]))
//print(maxArea([1, 500,000, 6, 2, 5, 4, 8, 3, 7]))
//print(maxArea([]))
//print(maxArea([4, 4, 4, 4]))
//print(maxArea([1, 1]))
//print(maxArea([1, 2, 1]))
