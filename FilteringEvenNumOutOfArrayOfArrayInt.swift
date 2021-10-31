Filtering even num in arrays from ArrayofArrays 

import Foundation

let n = 2
let q = [[1,0,5],[1,1,7],[1,0,3],[2,1,0],[2,1,1]]
var ans = [[Int]]()

for i in q {

    let a = i.filter { $0 % 2 == 0 }
    ans.append(a)
}

print(ans)

//output
//[[1, 5], [1, 1, 7], [1, 3], [1], [1, 1]]