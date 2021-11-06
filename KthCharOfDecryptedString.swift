import Foundation

var s = "ab2c3"

var arr = Array(s)
let asciiValues = s.compactMap { $0.asciiValue }

var n = 4

var ans = ""
var freq = 0
var i = 0
let p = getEncodedChar(s,n)
print(p)


func getEncodedChar(_ s: String,_ k: Int) -> String {
    var temp = ""
    var freq = 0
    while (i < s.count) {
        while(i<s.count && (arr[i] >= "a" && arr[i] <= "z")) {
            temp.append(arr[i])
            i = i + 1
        }
    
        while(i<s.count && (arr[i] >= "0" && arr[i] <= "9")) {
            freq = (freq * 1) + Int(asciiValues[i] - 48)
            i = i + 1
        }
    
        for _ in 1...freq {
            ans.append(temp)
        }
    
    }
    if freq == 0 {
        ans.append(temp)
    }
    
    print(ans)
    return "k"//String(temp[k-1])
}