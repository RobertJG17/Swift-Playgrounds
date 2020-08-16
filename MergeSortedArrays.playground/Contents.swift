import UIKit

var unorganizedList = [1,2,3,0,0,0]
var testList = [6, 5, 4, 0, 0, 0]
var soln = Solution()
var edgeTest = [0]

class Solution {
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard m != 0 else { nums1 = nums2; return }
        guard n != 0 else { return }
        
        for i in 1...n {
            nums1[m + n - i] = nums2[n - i]
        }
        
        for i in 1...m + n - 1 {
            for j in 0...m + n - (i + 1) {
                if nums1[j] > nums1[j + 1] {
                    let temp = nums1[j]
                    nums1[j] = nums1[j + 1]
                    nums1[j + 1] = temp
                }
            }
        }
    }
    
    func printNums(_ nums1: inout [Int]) {
        print(nums1)
    }
}

soln.merge(&unorganizedList, 3, [2,5,6], 3)
soln.merge(&testList, 3, [3, 2, 1], 3)
soln.merge(&edgeTest, 0, [1], 1)

soln.printNums(&unorganizedList)
soln.printNums(&testList)
soln.printNums(&edgeTest)

// [6, 5, 4, 3, 2, 1]

// After 1st Pass
// [6, 5, 4, 3, 2, 1] 5 comparisons

// After 2nd Pass
// [5, 4, 3, 2, 1, 6] 4 comparisons

// After 3rd Pass
// [4, 3, 2, 1, 5, 6] 3 comparisons

// After 4th Pass
// [3, 2, 1, 4, 5, 6] 2 comparisons

// After 5th Pass
// [2, 1, 3, 4, 5, 6] 1 comparison

// After 6th Pass
// [1, 2, 3, 4, 5, 6] 0 comparisons

