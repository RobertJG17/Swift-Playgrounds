import UIKit

func negOrPosQuotient(_ dividend: Int, _ divisor: Int, _ quotient: Int) -> Int {
    switch (dividend < 0, divisor < 0) {
    case (true, true), (false, false):
        return quotient
    case (true, false), (false, true):
        return -1 * quotient
    }
}

func divide(_ dividend: Int, _ divisor: Int) -> Int {
    var quotient = 0
    var absDividend = abs(dividend)
    let absDivisor = abs(divisor)
    
    while absDividend - absDivisor >= 0 {
        quotient += 1
        absDividend -= absDivisor
    }
    
    quotient = negOrPosQuotient(dividend, divisor, quotient)
    
    return quotient
   
}

print(divide(4, 3))
print(divide(24, 3))
print(divide(21, -7))
print(divide(48, -5))
print(divide(3, 4))
print(INT_MAX)
print(-INT_MAX - 1)


