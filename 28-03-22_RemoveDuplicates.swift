// Input: nums = [1, 1, 2]
// Output: k=2, nums = [1, 2, _]

// Input: nums = [0,0,1,1,1,2,2,3,3,4]
// Output: k=5, nums = [0,1,2,3,4,_,_,_,_,_]

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var k: Int = 0
        var index: Int = 1
        var lastIndex: Int = nums.count
        while(index < lastIndex) {
            if nums[index] != nums[k] {
                k = k + 1
                nums[k] = nums[index]
            }
            index = index + 1
            
        }
        return k + 1
    }
}
