//Check whether two strings are anagram or not
// Link ---- https://leetcode.com/problems/valid-anagram/
	
	func isAnagram(_ s: String, _ t: String) -> Bool {
        
        if s.count != t.count {
            return false
        }
        
        var a = Array(s)
        var b = Array(t)
        a.sort { $0 < $1 }
        b.sort { $0 < $1 }
        
        if a == b {
            return true
        }
        return false
    }
	
/*
Input: s = "anagram", t = "nagaram"
Output: true

Input: s = "rat", t = "car"
Output: false
*/