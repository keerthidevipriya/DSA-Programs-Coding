import Foundation

var a = ["keerthi","priya"]
var arr =  [String]()

for i in a {
    let ans = i.enumerated().reduce("") { (k,tup) -> String in 
        return k + (tup.offset % 2 == 0 ? tup.element.lowercased() : tup.element.uppercased())
    }
    arr.append(ans)
}

print(arr)


output 
["kEeRtHi", "pRiYa"]