import UIKit

//https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii

func maxProfit(_ prices: [Int]) -> Int {
    var profit: Int = 0
    for i in 1..<prices.count {
        let temp = prices[i] - prices[i-1]
        if temp > 0 {
            profit += temp
        }
    }
    return profit
}
