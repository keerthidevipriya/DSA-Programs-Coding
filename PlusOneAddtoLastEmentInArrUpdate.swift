//Add +1 to last element in the array if < 9 else create new array with 0 of size given array count+1 and update first ele to 0

//Link -- https://leetcode.com/problems/plus-one/

func plusOne(_ digits: [Int]) -> [Int] {
       
        var ans = digits
        var len = digits.count
        for i in stride (from: len, to: 0, by: -1) {
           if ans[i - 1] < 9 {
               ans[i - 1] =  ans[i - 1] + 1
               return ans
           }
            ans[i - 1] = 0
        }
        
        var sol = Array(repeating: 0, count: digits.count + 1)
        sol[0] = 1 
        return sol
}


/*
[1,2,3] -- [1,2,4]
[0] -- [1]
[9] -- [1,0]
*/