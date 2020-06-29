import UIKit


/**
 Initial design caused stack overflow due to excessively large factorials
 */

//func factorial(_ num: Int) -> Int {
//    if num == 1 || num == 0 { return 1 }
//    return num * factorial(num - 1)
//}
//
//func combination(_ num: Int, _ node: Int) -> Int {
//    return (factorial(num) / (factorial(node)*factorial(num - node)))
//}
//
//func generate(_ numRows: Int) -> [[Int]] {
//    var returnList = [[Int]]()
//
//    for num in 0..<numRows {
//        var lst = [Int]()
//        var node = 0
//
//        while node <= num {
//            lst.append(combination(num, node))
//            node += 1
//        }
//        returnList.append(lst)
//    }
//
//    return returnList
//}


//print(factorial(20))

/**
 This code passed!
 `Problem: Pascal's Triangle`
 */

func generate(_ numRows: Int) -> [[Int]] {
    var returnList = [[Int]]()
    var priorList = [Int]()
    var row = 1
    
    if numRows == 0 { return [] }

    while row <= numRows {
        var lst = [Int]()
        var node = 0
    
        while node < row {
            if node == 0 || node == row - 1 { lst.append(1) }
            else { lst.append(priorList[node] + priorList[node - 1]) }
            node += 1
        }
        
        returnList.append(lst)
        priorList = returnList[row - 1]
        row += 1
    }

    return returnList
}

print(generate(67))



