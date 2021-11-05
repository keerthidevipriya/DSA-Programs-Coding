BuySellStocksWithMaxProfit

//Link -- https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

func maxProfit(_ prices: [Int]) -> Int {
        
        var min = Int.max
        var max = 0
        
        for i in prices {
            if i < min { 
                min = i
            } else {
                if i - min > max {
                    max = i - min
                }
            }
        }
        return max
        
}


/*
Input1/Output1 -- [7,6,4,3,1] --> 0
Input2/Output2 -- [7,1,5,3,6,4] --> 6-1 = 5
Input3/Output3 -- [2,4,1] --> 2
*/

