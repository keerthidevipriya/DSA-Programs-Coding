import Foundation


let a = [[1,5,3],[2,4,7],[7,9,1]]

var ans = 0

var range1 = 20
var range2 = 30

for (i,e) in a.enumerated() {
    let rowSum = e.reduce(0,+)
    print("row sum--\(rowSum)")
    /*if rowSum >= range1 && rowSum <= range2 {
        print("YES")
        break
    }*/
    var colSum = 0
    var count = 0
    for (j,_) in e.enumerated() {
        //print("val---\(a[j][i])")//Printing values of columns
        count = count + 1
        colSum = colSum + a[j][i]
        if count == 3 {
            print("colsum---\(colSum)")
            /*if colSum >= range1 && colSum <= range2 {
                print("YES")
                break
            }*/
            
        }
    }
}


