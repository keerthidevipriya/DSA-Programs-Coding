func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        let arraySize = numbers.count
        var startIndex = 0
        var endIndex = arraySize - 1
        while (startIndex < endIndex) {
            if (numbers[startIndex] + numbers[endIndex] < target) {
                startIndex = startIndex + 1
            } else if (numbers[startIndex] + numbers[endIndex] > target) {
                endIndex = endIndex - 1
            } else {
                return [startIndex+1, endIndex+1]
            }
        }
        return [0,0]
    }
