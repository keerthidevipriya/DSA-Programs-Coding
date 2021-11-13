//a[i] = a[i] + i*i (index need to start at 1)
var a = [1,-2,9,4,1,-7]
var ans = [Int]()
for i in stride(from: 1, to: a.count + 1, by: 1) {
    let k = a[i - 1] + (i*i)
    ans.append(k)
}

print(ans)

/*
output - [2,2,18,20,26,29]
0 index == 1 -> 1 + (1*1) = 2
1 index == 2 -> -2 + (-2 * -2) = 2
2 index == 3 -> 9 + (3*3) = 18
....
...
..
*/
