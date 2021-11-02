import Foundation

let a = [1,212,12,12]
let x = 1212

let s = String(x)
let len = a.count - 1
var count = 0 

for i in stride(from: 0, to: len, by: 1) {
	let k = String(a[i])
	for j in stride(from: 0, to: len, by: 1) {
		
		if i != j {
			let m = String(a[j]) 
			if (k + m).elementEquals(s) {
				count = count + 1
			}
		}
	}
}

print(count)