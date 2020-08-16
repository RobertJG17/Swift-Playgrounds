import UIKit

func climbStairs(_ n: Int) -> Int {
    guard n != 0 else { return 0 }
    guard n != 1 else { return 1 }
    guard n != 2 else { return 2 }
    
    return climbStairs(n - 1) + climbStairs(n - 2)
}

print(climbStairs(2))
print(climbStairs(3))
print(climbStairs(4))
print(climbStairs(6))
