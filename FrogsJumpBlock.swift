import UIKit

let blocks = [2,6,8,5]
// output - 3

// let blocks = [1,5,5,2,6]
// output - 4

// let blocks = [1,1]
// output - 2

var maxValue = 0

for index in 0..<blocks.count {
    let jumpCount = backwardJump(index) + forwardJump(index) + 1
    if jumpCount > maxValue {
        maxValue = jumpCount
    }
}

print("MaxValue == \(maxValue)")

func backwardJump(_ index: Int) -> Int {
    if index == 0 {
        return 0
    } else if blocks[index-1] >= blocks[index]  {
        return 1 + backwardJump(index-1)
    }
    return 0
}

func forwardJump(_ index: Int) -> Int {
    
    if index == blocks.count - 1 {
        return 0
    } else if blocks[index+1] >= blocks[index] {
        return 1 + forwardJump(index+1)
    }
    return 0
}
