//Find the majority occurences of element > n/2 where n == arr.count

//Link -- https://leetcode.com/problems/majority-element/

func majorityElement(_ nums: [Int]) -> Int {
	var ans = nums
	var count = nums.count
	var mid = count / 2
        
	for i in ans {
		let c = ans.filter { $0 == i }.count
			if c > mid {
                return i
            }
        }
        return 0
    }
}

/*
[3,4,3] -- 3
[2,2,1,1,1,2,2] -- 2
[3,3,2] -- 3
*/