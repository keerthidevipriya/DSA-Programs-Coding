func val(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else {
       var i = 1
        while(i <= n/2 + 1) {
            if i*i > n {
                i = i - 1
                let v = (n - (i*i))
                return (1 + val(v))
            }
            i = i + 1
        }
    }
    return 0
}

let n = 13
let k = val(n)
print(k)


//Input - 13
//Output - 2

/*
13 -- (3*3) + (2*2) = 9 + 4 = 13
hence 2
*/
