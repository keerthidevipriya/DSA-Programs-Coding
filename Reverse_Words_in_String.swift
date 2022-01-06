func reverseWords(_ s: String) -> String {
        var outputString = ""
        var stringArray = s.components(separatedBy: " ")
        for index in 0..<stringArray.count {
            outputString += String(stringArray[index].reversed()) + ((index == stringArray.count - 1) ? "" : " ")
        }
        return outputString
    }
