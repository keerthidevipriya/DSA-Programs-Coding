func sortedSquares(_ nums: [Int]) -> [Int] {
        var outputArray = [Int]()
        for value in nums {
            var numberSquare = (value * value)
            outputArray.append(numberSquare)
        }
        outputArray = outputArray.sorted(by: { $1 > $0})
        return outputArray
    }
