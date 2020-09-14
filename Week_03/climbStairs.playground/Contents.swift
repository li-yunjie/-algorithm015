import UIKit

func climbStairs(_ n: Int) -> Int {
        //terminator
    if n == 1 { return 1 }
    if n == 2 { return 2 }
        //process
        //drill down
        return climbStairs(n-1) + climbStairs(n-2)
        //clear current state
}

var cache: [Int: Int] = [1:1, 2:2, 3:3]
func climbStairs_memo(_ n: Int) -> Int {
    if cache[n] != nil { return cache[n]! }
    cache[n] = climbStairs(n-1) + climbStairs(n-2)
    return cache[n]!
}

func climbStairs_dp(_ n: Int) -> Int {
    guard  n>0 else {
        return 0
    }
    var p = 0, q = 0, r = 1
    for _ in 0..<n {
        p = q
        q = r
        r = p + q
    }
    return r
}
