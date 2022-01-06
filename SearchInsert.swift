/*

Link --- https://leetcode.com/problems/implement-strstr/ 

Find the index of element

*/

//O(n) complexity

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (i,e) in nums.enumerated() {
            if target <= e {
                return i
            }
        }
        return nums.count
    }
}

//O(logn) complexity

/*
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var startIndex = 0
        var endIndex = nums.count - 1
        var outputIndex = 0
        while (startIndex <= endIndex) {
            var currentIndex = (startIndex + endIndex)/2
            if nums[currentIndex] == target {
                return currentIndex
            } else if target > nums[currentIndex] {
                startIndex = currentIndex + 1
                outputIndex = currentIndex + 1
            } else {
                endIndex = currentIndex - 1
                outputIndex = currentIndex
            }
        }
        return outputIndex
    }
}
*/

