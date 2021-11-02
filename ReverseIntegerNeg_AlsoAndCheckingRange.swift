func reverse(_ x: Int) -> Int {
        var m = x
        if x < 0 {
           m = m * -1 
        }
        var ans = 0
        var n = m
        while(n > 0) {
            let rem = n % 10
            ans = ans * 10 + rem
            n = n / 10
        }
        var range1 = -2147483648
        var range2 = 2147483647
        
        var k: Int
        if x < 0 {
            k = (ans * -1)
        } else {
            k = ans
        }
        if k <= range1 || k > range2 {
            return 0
        } else {
            return k
        }
}