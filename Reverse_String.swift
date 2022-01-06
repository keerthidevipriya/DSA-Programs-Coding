func reverseString(_ s: inout [Character]) {
        let arraySize = s.count
        var startIndex = 0
        var endIndex = arraySize - 1
        while (startIndex < endIndex) {
            var element = s[startIndex]
            s[startIndex] = s[endIndex]
            s[endIndex] = element
            startIndex = startIndex + 1
            endIndex = endIndex - 1
        }
    }
