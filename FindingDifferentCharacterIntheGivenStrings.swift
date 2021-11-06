//Find the diffrenece character in second string from firts string 
//Done using finding the diff in ascii values

//Link --- https://leetcode.com/problems/find-the-difference/

func findTheDifference(_ s: String, _ t: String) -> Character {
	var a = s.compactMap { Int($0.asciiValue ?? 97) }
	var b = t.compactMap { Int($0.asciiValue ?? 97) }
	var m = a.reduce(0,+)
	var n = b.reduce(0,+)
	let diff = (n - m)
        
	return Character(UnicodeScalar(diff) ?? "a")
}

/*
Input: s = "abcd", t = "abcde"
Output: "e"
Explanation: 'e' is the letter that was added.

Input: s = "a", t = "aa"
Output: "a"
*/