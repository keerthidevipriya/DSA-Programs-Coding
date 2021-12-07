//Minimum swaps 2

//Link - https://www.hackerrank.com/challenges/minimum-swaps-2/problem?isFullScreen=true&h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays


import Foundation

// Complete the minimumSwaps function below.
func minimumSwaps(arr: [Int]) -> Int {
    var minSwaps = 0
    var newArr = arr
    var index = 0
    while (index < arr.count) {
        if newArr[index] != (index + 1) {
            var temp = newArr[index]
            newArr[index] = newArr[temp - 1]
            newArr[temp - 1] = temp
            minSwaps += 1
        } else {
            index += 1
        }
    }
    return minSwaps
}


//Input & Ouput

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let res = minimumSwaps(arr: arr)

fileHandle.write(String(res).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
