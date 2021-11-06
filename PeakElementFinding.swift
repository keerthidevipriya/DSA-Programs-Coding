//Finding the higest element in array and return index
//Link -- https://leetcode.com/problems/find-peak-element/


func findPeakElement(_ nums: [Int]) -> Int {
        var peak = 0
        var isEntered = false
        if nums.count < 2 {
            return 0
        }
        for i in 0...nums.count - 2 {
            if nums[i] > nums[i + 1] {
                isEntered = true
                peak = i
                break
            }
        }
        if peak == 0 && !isEntered {
            return nums.count - 1
        }
        return peak
 }