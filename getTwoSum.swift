import Foundation

func getTwoSum(_ arr: [Int], target: Int) -> [Int] {
    var dict = [Int: Int]()

    for (i,e) in arr.enumerated() {
        if let otherIndex = dict[target-e], otherIndex != i {
            return [i, otherIndex]
        }
        dict[e] = i
    }
    return [0,0]
}

let arr = [3,2,4]
let target = 6
let ans = getTwoSum(arr, target: target)
print(ans)
