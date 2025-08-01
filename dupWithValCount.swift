/*
Input: 3, 3, 8, 8, 8, 8, 9, 3, 1, 1
Output: 2 3 4 8 1 9 1 3 2 1
*/

import Foundation

func getNumCount(_ arr: [Int]) -> [Int] {
    var a = arr[0]
    var res = [Int]()
    var count = 0
    for i in arr {
        if i == a {
            count = count + 1
        } else {
            res.append(count)
            res.append(a)
            count = 1
            a = i
        }
        
    }
    res.append(count)
    res.append(a)
    return res
}

let inp = [3, 3, 8, 8, 8, 8, 9, 3, 1, 1]
let op = getNumCount(inp)


/*
output format - count val count val
*/
print(op)
