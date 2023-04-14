class Solution {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {

        var ans = 0

        for i in words {
            let len = i.count
            let endVal = len - left
            let start = i.index(i.startIndex, offsetBy: left)
            let end = i.index(start, offsetBy: endVal)

            let range = start..<end
            let word = i[range]

            if isVowel(word.first) && isVowel(word.last) {
                ans += 1
            }
        }
        return ans
    }

    func isVowel(_ a: Character?) -> Bool {
        if a == "a" || a == "e" || a == "i" || a == "o" || a == "u" {
            return true
        }
        return false
    }
}

// Question: https://leetcode.com/problems/count-the-number-of-vowel-strings-in-range/
