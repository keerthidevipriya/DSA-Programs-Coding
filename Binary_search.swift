func search(_ nums: [Int], _ target: Int) -> Int {
        var startIndex = 0
        var endIndex = nums.count - 1
        while (startIndex <= endIndex) {
            var currentIndex = (startIndex + endIndex)/2
            if (target == nums[currentIndex]) {
                return currentIndex
            } else if (target > nums[currentIndex]) {
                startIndex = currentIndex + 1
            } else {
                endIndex = currentIndex - 1
            }
        }
        return -1
    }
