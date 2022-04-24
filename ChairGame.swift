import UIKit

func circularArrangement(_ number: Int) -> Int {
        
    if number == 1 {
        return 0
    } else if number == 2 {
        return 1
    } else {
        return (number-1) * (circularArrangement(number-1) + circularArrangement(number-2))
    }
}


let number = 3
// output - 9

// let number = 2
// output - 2

// let number = 4
// output - 44

let possibleArrangements = circularArrangement(number+1)
print(possibleArrangements)

