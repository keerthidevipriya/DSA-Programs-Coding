Link ---- https://leetcode.com/problems/string-to-integer-atoi/submissions/

import Foundation


class Solution {
    
    func myAtoi(_ s: String) -> Int {
        
        var ans = ""
        var sign = 0
        var n = -1
        var isNumber = false
        
        let r1 = -2147483648
        let r2 = 2147483647
        
        for i in s {
            if i != " " && (i >= "0" && i <= "9") || i == "-" || i == "+" {
                if i >= "0" && i <= "9" {
                    isNumber = true
                }
                if i == "+" || i == "-" {
                    sign = sign + 1
                    if sign > 0 && isNumber {
                        break
                    }
                }
                
                ans.append(i)
            } else if i == "." {
                break
            } else if i != " " {
                if !isNumber {
                    n = 0
                }
                break
            } else if i == " " && (isNumber || sign > 0) {
                isNumber = false
                break
            }
        }
        
        var k: Double = 0
        if  n == 0 {
            return n
        } else {
            k = Double(ans) ?? 0
        }
        
       
        if k < Double(r1) {
            return r1
        } else if k > Double(r2) {
            return r2
        }
        return Int(ans) ?? 0
    }
} 


//output
// "-5-" --> -5
// "4193 words" ---> 4193
// "+ 125" ---> 0