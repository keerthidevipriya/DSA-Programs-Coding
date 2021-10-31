//Filtering the elements from array and return tht array based on arr elemet count

import Foundation

var a = ["keerthi","devi","priya"]
var arr =  [String]()

let ans = a.filter { $0.count > 4 }

print(ans)


//Output
//["keerthi", "priya"]