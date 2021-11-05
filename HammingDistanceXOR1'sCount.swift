/*Hamming Distance
Convert num into XOR
Given with two digits
find how many occurences of 1 will be there after cnverting to binary and return count*/

//Link ---- https://leetcode.com/problems/hamming-distance/


    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var result = 0
        var m = x
        var n = y
        while (m > 0 || n > 0) {
            result = result + ((m%2) ^ (n%2))
            m >>= 1
            n >>= 1
        }
        return result
    }

	
/*
Input -  x = 1, y = 4
Output - 2
*/



