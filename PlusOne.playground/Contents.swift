func plusOne(_ digits: [Int]) -> [Int] {
    
    return []
}

print(plusOne([2, 3, 9, 7, 8]))


/*
 
 FIRST ATTEMPT
 
 SPEED: 4ms faster than 98.26% of Swift users
 MEMORY: 20.6 MB less than 92.87% of Swift users
 
 func plusOne(_ digits: [Int]) -> [Int] {
     var digitsCopy = digits
     var i = 1
     
     while digitsCopy[digitsCopy.count - i] + 1 == 10 {
         digitsCopy[digitsCopy.count - i] = 0
         i += 1
         
         if i > digitsCopy.count {
             digitsCopy[0] = 1
             digitsCopy.append(0)
             
             return digitsCopy
         }
     }
     
     digitsCopy[digitsCopy.count - i] += 1
     
     return digitsCopy
 }
 
 */
