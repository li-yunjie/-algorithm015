import UIKit

//https://leetcode-cn.com/problems/unique-paths/

func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp:[[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
        for i in 0..<n {
            for j in 0..<m {
            if i == 0 || j == 0 {
                dp[i][j] = 1
                } else {
                    dp[i][j] = dp[i-1][j] + dp[i][j-1]
                }
            }
        }
        return dp[n-1][m-1]
    }

let res = uniquePaths(7, 3)

func uniquePaths2(_ m: Int, n: Int) -> Int {
    var dp: [Int] = Array(repeating: 1, count: m)
    var row = n-1
    while row>0 {
        for i in (0..<m-1).reversed() {
            dp[i] = dp[i+1]+dp[i]
        }
        row -= 1
    }
    return dp[0]
}
