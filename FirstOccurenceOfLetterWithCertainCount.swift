//Print first occurence of letter with count 3 in the string

import Foundation

let s = "keerrrthhhi"
var arr = Array(s)

for i in arr {
  let count = arr.filter { $0 == i }.count
  if count == 3 {
    print(i)
    break
  }
}

//output -- r (first letter to be in 3 occurences)