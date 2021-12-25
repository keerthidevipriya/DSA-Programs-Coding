func moveZeroes(_ nums: inout [Int]) {
        var count = nums.filter { $0 == 0 }.count
        for _ in 0..<count {
            if let index = nums.firstIndex(of: 0) {
                nums.remove(at: index)   
            }
            nums.append(0)
        }
    }
