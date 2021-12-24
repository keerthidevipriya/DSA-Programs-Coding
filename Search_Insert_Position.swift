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
