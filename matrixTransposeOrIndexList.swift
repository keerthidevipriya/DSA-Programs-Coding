//Generate List with indexNumber or Transpose of Matrix

import Foundation

var a = [[1,2,3], [4,5,6], [7,8,9]]

func getArr(_ a: [[Int]]) -> [[Int]] {
    var res = [[Int]]()
    guard let firstRow = a.first else { return [[-1]] }
    for c in 0..<firstRow.count {
        var newRow: [Int] = []
        for r in a {
            if c < r.count {
                newRow.append(r[c])
            }
        }
        res.append(newRow)
    }
    return res
}

let ans = getArr(a)
print(ans)

/*
Input: [[1,2,3], [4,5,6], [7,8,9]]
Output: [1,4,7], [2,5,8], [3,6,9]]
*/
