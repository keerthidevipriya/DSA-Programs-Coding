//FizzBuzz

//Link -- https://leetcode.com/problems/fizz-buzz/

func fizzBuzz(_ n: Int) -> [String] {
	var ans = [String]()
        
	for i in 1...n {
		if i % 3 == 0 && i % 5 == 0 {
			ans.append("FizzBuzz")
		} else if i % 3 == 0 {
			ans.append("Fizz")
		} else if i % 5 == 0 {
			ans.append("Buzz")
		} else {
			ans.append(String(i))
		}
	}
        
	return ans
}

/*
15
["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
*/